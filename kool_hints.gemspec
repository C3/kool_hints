$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kool_hints/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kool_hints"
  s.version     = KoolHints::VERSION
  s.authors     = ["C3"]
  s.email       = ["support@c3.com.au"]
  s.summary     = "Hints"
  s.description = "Editable help."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
