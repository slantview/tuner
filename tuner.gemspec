# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tuner/version', __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["Steve Rude"]
  s.email         = ["steve@slantview.com"]
  s.description   = %q{Host tuning for performance. Inspired by mysqltuner.pl and tuning-primer.sh}
  s.summary       = %q{Host tuning for performance. Inspired by mysqltuner.pl and tuning-primer.sh}
  s.homepage      = "http://github.com/slantview/tuner"
  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "tuner"
  s.require_paths = ["lib"]
  s.version       = Tuner::VERSION

  s.rubyforge_project = %q{tuner}

  s.add_dependency "terminal-table"
  s.add_dependency "thor"
  s.add_dependency "bundler"
  s.add_dependency "ohai"
  
  s.add_development_dependency "rspec"
  s.add_development_dependency "cucumber"


end