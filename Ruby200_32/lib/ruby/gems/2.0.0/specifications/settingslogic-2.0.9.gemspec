# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "settingslogic"
  s.version = "2.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ben Johnson"]
  s.date = "2012-12-30"
  s.description = "A simple and straightforward settings solution that uses an ERB enabled YAML file and a singleton design pattern."
  s.email = ["bjohnson@binarylogic.com"]
  s.homepage = "http://github.com/binarylogic/settingslogic"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "A simple and straightforward settings solution that uses an ERB enabled YAML file and a singleton design pattern."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
