# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require '427/version'

Gem::Specification.new do |spec|
  spec.name          = "four_two_seven"
  spec.version       = FourTwoSeven::VERSION
  spec.authors       = ["Lee Machin"]
  spec.email         = ["ljmachin@gmail.com"]
  spec.summary       = %q{Employee number 427's job was simple...}
  spec.description   = %q{...he sat at his desk in room 427 and he pushed buttons on a keyboard.}
  spec.homepage      = "https://github.com/leemachin/427"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "curses"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
