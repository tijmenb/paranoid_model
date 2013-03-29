# -*- encoding: utf-8 -*-
require File.expand_path('../lib/paranoid_model/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tijmen Brommet"]
  gem.email         = ["tijmen@gmail.com"]
  gem.description   = %q{Disable sensitive methods on ActiveRecord models}
  gem.summary       = %q{Disables destructive methods and methods that don't validate the input on ActiveRecord models}
  gem.homepage      = "https://github.com/tijmenb/paranoid_model"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "paranoid_model"
  gem.require_paths = ["lib"]
  gem.version       = ParanoidModel::VERSION
  gem.add_development_dependency "rspec"
end
