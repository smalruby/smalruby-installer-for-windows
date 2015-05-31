# -*- encoding: utf-8 -*-
# stub: smalrubot 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "smalrubot"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kouji Takao"]
  s.date = "2015-05-22"
  s.description = "The smalrubot is a library and an Arduino sketch for Smalruby."
  s.email = ["kouji.takao@gmail.com"]
  s.executables = ["smalrubot"]
  s.files = ["bin/smalrubot"]
  s.homepage = "https://github.com/smalruby/smalrubot"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.3"
  s.summary = "A library and an Arduino sketch for Smalruby."

  s.installed_by_version = "2.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubyserial>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rubyserial>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rubyserial>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
