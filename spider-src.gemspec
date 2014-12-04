# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spider-src/version'

Gem::Specification.new do |spec|
  
  spec.name          = "spider-src"
  spec.version       = Spider::Src::VERSION
  spec.authors       = ["Alin Iacob"]
  spec.email         = ["alin@thegeek.ro"]
  
  spec.summary       = %q{Spider sources in a gem}
  spec.description   = %q{Spider sources in a gem}
  spec.homepage      = "https://github.com/alinbsp/spider-src"
  spec.license       = "Artistic 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
