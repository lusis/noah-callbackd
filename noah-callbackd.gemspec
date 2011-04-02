# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "noah-callbackd/version"

Gem::Specification.new do |s|
  s.name        = "noah-callbackd"
  s.version     = Noah::Callbackd::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["John E. Vincent"]
  s.email       = ["lusis.org+rubygems.org@gmail.com"]
  s.homepage    = "https://github.com/lusis/noah-callbackd"
  s.summary     = %q{Watcher callback daemon for Noah}
  s.description = %q{Official Noah daemon for providing callback notifications in Noah}

  s.rubyforge_project = "noah-callbackd"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("noah-agents-core", "0.0.1")
  s.add_dependency("eventmachine", "1.0.0.beta.3")
  s.add_dependency("em-http-request", "1.0.0.beta.3")
  s.add_dependency("redis", "2.2.0")
  s.add_dependency("ohm", "0.1.3")
  s.add_dependency("ohm-contrib", "0.1.1")
  s.add_dependency("sinatra", "1.2.0")
  s.add_dependency("em-hiredis", "0.0.1")
  s.add_dependency("thin")
  s.add_dependency("yajl-ruby")
  s.add_dependency("slop", "1.3.1")

  s.add_development_dependency("rspec", "~> 2.5")
  s.add_development_dependency("rack-test", "0.5.7")
end
