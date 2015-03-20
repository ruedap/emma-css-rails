$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "emma-css-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "emma-css-rails"
  s.version     = EmmaCssRails::VERSION
  s.authors     = ["ruedap"]
  s.email       = ["ruedap@ruedap.com"]
  s.homepage    = "https://github.com/ruedap/emma-css-rails"
  s.summary     = "Emma.css for Rails"
  s.description = "Emma.css { emmet-like utility classes } for Rails"
  s.license     = "MIT"

  s.files = Dir["{lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.md", "CHANGELOG.md"]

  s.add_runtime_dependency "sass", ">= 3.4"
  s.add_runtime_dependency "sass-rails", ">= 5.0"
end
