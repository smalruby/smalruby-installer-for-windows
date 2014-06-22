# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "serialport"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Guillaume Pierronnet", "Alan Stern", "Daniel E. Shipton", "Tobin Richard", "Hector Parra", "Ryan C. Payne"]
  s.date = "2013-11-24"
  s.description = "Ruby/SerialPort is a Ruby library that provides a class for using RS-232 serial ports."
  s.email = "hector@hectorparra.com"
  s.extensions = ["ext/native/extconf.rb"]
  s.extra_rdoc_files = ["LICENSE", "README.md"]
  s.files = ["LICENSE", "README.md", "ext/native/extconf.rb"]
  s.homepage = "http://github.com/hparra/ruby-serialport/"
  s.licenses = ["GPL-2"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Library for using RS-232 serial ports."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0.4.1"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, [">= 0.4.1"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, [">= 0.4.1"])
  end
end
