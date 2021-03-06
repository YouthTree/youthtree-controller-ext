require 'rubygems'
require 'rake'

require 'active_support'
require 'active_support/core_ext'
require File.expand_path('lib/youth_tree/controller_ext', File.dirname(__FILE__))

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = "youthtree-controller-ext"
    gem.summary     = "Simple controller mixin support for rails 3. Including some common extensions."
    gem.description = "Provides uses_controller_extension and a set of common mixins."
    gem.email       = "sutto@sutto.net"
    gem.homepage    = "http://github.com/YouthTree/youthtree-controller-ext"
    gem.authors     = ["Darcy Laycock"]
    gem.version     = YouthTree::ControllerExt::VERSION
    gem.add_dependency "activesupport", ">= 3.0.0.beta4"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "youthtree-settings #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
