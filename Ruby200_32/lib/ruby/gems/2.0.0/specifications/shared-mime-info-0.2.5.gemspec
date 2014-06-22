# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "shared-mime-info"
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mael Clerambault"]
  s.date = "2013-06-02"
  s.description = "shared-mime-info is a pure Ruby library for accessing the MIME info database provided by Freedesktop"
  s.email = "mael@clerambault.fr"
  s.homepage = "http://shared-mime.rubyforge.org/"
  s.licenses = ["Public Domain"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Library to guess the MIME type of a file with both filename lookup and magic file detection"
end
