# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/sculpin"

Gem::Specification.new do |s|
  s.name        = "guard-sculpin"
  s.version     = Guard::Sculpin::VERSION
  s.authors     = ["Florian Eckerstorfer"]
  s.email       = ["florian@eckerstorfer.co"]
  s.homepage    = "http://github.com/florianeckerstorfer/guard-sculpin"
  s.summary     = "Guard gem for running Sculpin"
  s.description = "Guard::Sculpin automatically runs Sculpin when watched files are modified."
  s.licenses    = ['MIT']

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'guard', '~> 1.8', '>= 1.8.0'
end