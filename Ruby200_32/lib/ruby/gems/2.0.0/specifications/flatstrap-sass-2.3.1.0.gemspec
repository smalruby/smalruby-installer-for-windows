# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "flatstrap-sass"
  s.version = "2.3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luca Tironi"]
  s.date = "2013-05-11"
  s.description = "Sass-powered version of Little Spark's Flatstrap, based on the work by Thomas McDonald on https://github.com/thomas-mcdonald/bootstrap-sass"
  s.email = "luca.tironi@gmail.com"
  s.homepage = "http://github.com/lucatironi/flatstrap-sass"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Little Spark's Flatstrap (Bootstrap without rounded corners), converted to Sass and ready to drop into Rails or Compass"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<compass>, [">= 0"])
      s.add_development_dependency(%q<sass-rails>, ["~> 3.2"])
      s.add_runtime_dependency(%q<sass>, ["~> 3.2"])
      s.add_runtime_dependency(%q<font-awesome-rails>, ["~> 3.0.2.0"])
    else
      s.add_dependency(%q<compass>, [">= 0"])
      s.add_dependency(%q<sass-rails>, ["~> 3.2"])
      s.add_dependency(%q<sass>, ["~> 3.2"])
      s.add_dependency(%q<font-awesome-rails>, ["~> 3.0.2.0"])
    end
  else
    s.add_dependency(%q<compass>, [">= 0"])
    s.add_dependency(%q<sass-rails>, ["~> 3.2"])
    s.add_dependency(%q<sass>, ["~> 3.2"])
    s.add_dependency(%q<font-awesome-rails>, ["~> 3.0.2.0"])
  end
end
