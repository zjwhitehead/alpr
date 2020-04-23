# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alpr/version'

Gem::Specification.new do |spec|
  spec.name          = 'alpr'
  spec.version       = Alpr::VERSION
  spec.authors       = ['Andrew Monks', 'Zach Whitehead']
  spec.email         = ['zjwhitehead@users.noreply.github.com']

  spec.summary       = 'Ruby wrapper for openalpr'
  spec.homepage      = 'http://github.com/zjwhitehead/alpr'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'json'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'minitest-ci'
end
