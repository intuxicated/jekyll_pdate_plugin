# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll_pdate_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll_pdate_plugin"
  spec.version       = Jekyll::PdatePlugin::VERSION
  spec.authors       = ["intuxicated"]
  spec.email         = ["hidensoft@gmail.com"]
  spec.summary       = %q{add persian date to Liquid filters}
  spec.description   = %q{add pdate_to_string filter to Liquid filters using parsi-date 
gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "parsi-date"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
