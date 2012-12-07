# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Gem_02/version'

Gem::Specification.new do |gem|
  gem.name          = "Gem_02"
  gem.version       = Gem02::VERSION
  gem.authors       = ["al"]
  gem.email         = ["alShamshev@yandex.ru"]
  gem.description   = ["first gem"]
  gem.summary       = ["first summary"]
  gem.homepage      = "http://www.google.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]



end
