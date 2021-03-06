# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mobile_network_info/version'

Gem::Specification.new do |spec|
  spec.name          = "mobile_network_info"
  spec.version       = MobileNetworkInfo::VERSION
  spec.authors       = ["Trevor Kimenye"]
  spec.email         = ["kimenye@gmail.com"]
  spec.summary       = %q{TODO: Get accurate network information for international mobile carriers.}
  spec.description   = %q{TODO: Get the MNC and MCC for a given network.}
  spec.homepage      = "http://github.com/sproutke/mobile_network_info"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.8.7"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
