# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid/bcrypt/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid-bcrypt-ruby"
  spec.version       = Mongoid::Bcrypt::Ruby::VERSION
  spec.authors       = ["Sho Kusano"]
  spec.email         = ["rosylilly@aduca.org"]
  spec.description   = %q{Useful BCrypt::Password for Mongoid}
  spec.summary       = %q{Useful BCrypt::Password for Mongoid}
  spec.homepage      = "https://github.com/rosylilly/mongoid-bcrypt-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_dependency 'bcrypt-ruby'
end
