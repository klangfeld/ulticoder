# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ulticoder/version'

Gem::Specification.new do |spec|
  spec.name          = "ulticoder"
  spec.version       = Ulticoder::VERSION
  spec.authors       = ["Jan Jezek"]
  spec.email         = ["mail@mediatainment-productions.com"]
  spec.summary       = %q{Aggregation and expansion of geocoder and geonames gem}
  spec.description   = %q{}
  spec.homepage      = "http://www.github.com/mediatainment/ulticoder"
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'geocoder'
  spec.add_dependency 'geonames'

  spec.add_development_dependency "rspec", ">= 2.0.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-cucumber"
end
