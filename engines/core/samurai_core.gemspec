$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_core"
  s.version     = Samurai::Core::VERSION
  s.authors     = ["RealSilo"]
  s.email       = ["szilard.magyar@gmail.com"]
  s.homepage    = "http:szmagyar.com"
  s.summary     = "Core features of SamuraiCRM"
  s.description = "Core features of SamuraiCRM"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency "sass-rails", "~> 5.0"
  s.add_dependency "bootstrap-sass", "~> 3.3", ">= 3.3.7"
  s.add_dependency "autoprefixer-rails", "~> 6.5", ">= 6.5.3.1"
  s.add_dependency "devise", "~> 4.2"
  s.add_dependency "pundit", "~> 1.1"

  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "database_cleaner"
end
