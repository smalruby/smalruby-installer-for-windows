# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dino"
  s.version = "0.11.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Austinbv"]
  s.date = "2013-06-09"
  s.description = "A utility library for interfacting with an Arduino.\n  Designed for control, expansion, and with love."
  s.email = ["austinbv@gmail.com"]
  s.executables = ["dino"]
  s.files = ["bin/dino"]
  s.homepage = "https://github.com/austinbv/dino"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Control your Arduino with Ruby."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<serialport>, [">= 0"])
    else
      s.add_dependency(%q<serialport>, [">= 0"])
    end
  else
    s.add_dependency(%q<serialport>, [">= 0"])
  end
end
