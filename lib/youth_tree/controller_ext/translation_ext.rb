YouthTree::ControllerExt.for(:translation) do

  def self.included(parent)
    parent.send :include, InstanceMethods
    parent.send :helper_method ,:tf, :tu
  end


  module InstanceMethods

    protected

    def tf(key, opts = {})
      I18n.t(key.to_sym, opts.merge(:scope => :flash))
    end

    def tu(name, options = {})
      scope = [:ui, options.delete(:scope)].compact.join(".").to_sym
      I18n.t(name, options.merge(:scope => scope))
    end

  end

end
