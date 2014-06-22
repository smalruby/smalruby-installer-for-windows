# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "font-awesome-rails"
  s.version = "3.0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["bokmann"]
  s.date = "2013-01-21"
  s.description = "I like font-awesome.  I like the asset pipeline.  I like semantic versioning.  If you do too, you're welcome."
  s.email = ["dbock@codesherpas.com"]
  s.homepage = "https://github.com/bokmann/font-awesome-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "an asset gemification of the font-awesome icon font library"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
