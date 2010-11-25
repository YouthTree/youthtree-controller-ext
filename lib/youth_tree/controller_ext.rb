require 'active_support/concern'

module YouthTree
  module ControllerExt

    VERSION = "0.1.2".freeze

    mattr_accessor :known_extensions
    self.known_extensions ||= {}

    def self.load_default!
      dir = File.expand_path("controller_ext", File.dirname(__FILE__))
      Dir[File.join(dir, "*.rb")].each do |f|
        require f
      end
      known_extensions[:pseudocephalopod_resource] = YouthTree::ControllerExt::SluggedResourceExt
    end

    # Lookup controller extensions.
    def self.[](name)
      name = name.to_sym
      if known_extensions.has_key?(name)
        return known_extensions[name]
      else
        constant_name = "#{name.to_s.classify}Ext"
        [nil, "YouthTree::ControllerExt", "YouthTree", "ControllerExt"].each do |namespace|
          full = [namespace, constant_name].compact.join("::")
          begin
            constant = full.constantize
            known_extensions[name] = constant
            return constant
          rescue NameError
          end
        end
        nil
      end
    end

    def self.for(name, &blk)
      constant_name = "#{name.to_s.classify}Ext"
      const_set(constant_name, Module.new) unless const_defined?(constant_name) 
      const_get(constant_name).tap do |m|
        m.module_eval(&blk) if blk.present?
      end
    end

    module ClassMethods

      def use_controller_exts(*args)
        args.each do |k|
          mod = YouthTree::ControllerExt[k]
          include mod if mod.present?
        end
      end
      alias uses_controller_exts use_controller_exts

    end

    # Include the mixin in action controller.
    ActionController::Base.extend(ClassMethods) if defined?(ActionController::Base)

    if defined?(Rails::Railtie)
      class Railtie < Rails::Railtie
        initializer "youthtree.controller-ext" do
          YouthTree::ControllerExt.load_default!
        end
      end
    end

  end
end
