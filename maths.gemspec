# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "maths/version"

Gem::Specification.new do |spec|
  spec.name          = 'maths'
  spec.version       = Maths::VERSION
  spec.authors       = ["Ranjeet Singh"]
  spec.email         = ["mail@raeoks.com"]
  spec.summary       = %q{Quintype's Bootcamp TDD Problem Set}
  spec.description   = %q{"It does simple math operations"}
  spec.homepage      = "https://github.com/raeoks/bootcamp-maths"
  spec.license       = "MIT"
end
