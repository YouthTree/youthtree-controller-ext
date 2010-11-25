# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{youthtree-controller-ext}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Darcy Laycock"]
  s.date = %q{2010-11-26}
  s.description = %q{Provides uses_controller_extension and a set of common mixins.}
  s.email = %q{sutto@sutto.net}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.md",
    "Rakefile",
    "lib/youth_tree/controller_ext.rb",
    "lib/youth_tree/controller_ext/almost_happy_ext.rb",
    "lib/youth_tree/controller_ext/authlogic_helpers_ext.rb",
    "lib/youth_tree/controller_ext/authorization_helpers_ext.rb",
    "lib/youth_tree/controller_ext/sidebar_ext.rb",
    "lib/youth_tree/controller_ext/slugged_resource_ext.rb",
    "lib/youth_tree/controller_ext/ssl_requirement_ext.rb",
    "lib/youth_tree/controller_ext/title_estuary_ext.rb",
    "lib/youth_tree/controller_ext/translation_ext.rb",
    "lib/youthtree-controller-ext.rb",
    "youthtree-controller-ext.gemspec"
  ]
  s.homepage = %q{http://github.com/YouthTree/youthtree-controller-ext}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple controller mixin support for rails 3. Including some common extensions.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
  end
end

