# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "html2haml"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Norman Clarke"]
  s.date = "2013-02-16"
  s.description = "Converts HTML into Haml"
  s.email = ["norman@njclarke.com"]
  s.executables = ["html2haml"]
  s.files = ["bin/html2haml"]
  s.homepage = "http://haml.info"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Converts HTML into Haml"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, ["~> 0.8.6"])
      s.add_runtime_dependency(%q<erubis>, ["~> 2.7.0"])
      s.add_runtime_dependency(%q<ruby_parser>, ["~> 3.1.1"])
      s.add_runtime_dependency(%q<haml>, [">= 4.0.0.rc.1"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_development_dependency(%q<minitest>, ["~> 4.4.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<hpricot>, ["~> 0.8.6"])
      s.add_dependency(%q<erubis>, ["~> 2.7.0"])
      s.add_dependency(%q<ruby_parser>, ["~> 3.1.1"])
      s.add_dependency(%q<haml>, [">= 4.0.0.rc.1"])
      s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_dependency(%q<minitest>, ["~> 4.4.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<hpricot>, ["~> 0.8.6"])
    s.add_dependency(%q<erubis>, ["~> 2.7.0"])
    s.add_dependency(%q<ruby_parser>, ["~> 3.1.1"])
    s.add_dependency(%q<haml>, [">= 4.0.0.rc.1"])
    s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
    s.add_dependency(%q<minitest>, ["~> 4.4.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
