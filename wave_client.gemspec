# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wave_client/version'

Gem::Specification.new do |spec|
  spec.name          = "wave_client"
  spec.version       = WaveClient::VERSION
  spec.authors       = ["Michael Chrisco"]
  spec.email         = ["michaelc@cvtrust.org"]

  spec.summary       = 'Small client around http://wave.webaim.org'
  spec.description   = 'Client for http://wave.webaim.org'
  spec.homepage      = "https://github.com/michaelachrisco/wave_client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
