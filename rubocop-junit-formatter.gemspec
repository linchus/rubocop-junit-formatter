# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rubocop-junit-formatter"
  spec.version       = '0.1.3'
  spec.authors       = ["Mikko Kokkonen"]
  spec.email         = ["mikko@mikian.com"]
  spec.summary       = %q{Outputs RuboCop Offences as JUnit report}
  spec.description   = %q{Allows neat integration with Atlassian Bamboo by listing all offences as failed JUnit testcase}
  spec.homepage      = "https://github.com/mikian/rubocop-junit-formatter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
