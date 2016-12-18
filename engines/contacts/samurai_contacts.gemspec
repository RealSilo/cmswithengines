$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_contacts"
  s.version     = Samurai::Contacts::VERSION
  s.authors     = ["RealSilo"]
  s.email       = ["szilard.magyar@gmail.com"]
  s.homepage    = "http://szmagyar.com"
  s.summary     = "Contact feature for SamuraiCRM"
  s.description = "Contact feature for SamuraiCRM"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.0.1"
  s.add_dependency "samurai_core"
  s.add_dependency "deface"
end
