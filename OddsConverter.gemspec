# -*- encoding: utf-8 -*-
require File.expand_path('../lib/OddsConverter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["rudedoc"]
  gem.email         = ["finlay.mark@gmail.com"]
  gem.description   = %q{Converts odds from fractional to decimal and visa versa}
  gem.summary       = %q{Takes a Fractional Price and converts it to a decimal price, take a decimal and converts it to the nearest fractional prices.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "OddsConverter"
  gem.require_paths = ["lib"]
  gem.version       = OddsConverter::VERSION
end
