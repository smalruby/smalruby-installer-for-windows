# -*- encoding: utf-8 -*-
# stub: rubyserial 0.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "rubyserial"
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Adrian Zankich", "Theron Boerner", "Javier Cervantes"]
  s.date = "2015-05-28"
  s.description = "FFI Ruby library for RS-232 serial port communication"
  s.homepage = "https://github.com/hybridgroup/rubyserial"
  s.licenses = ["Apache 2.0"]
  s.rubygems_version = "2.2.3"
  s.summary = "FFI Ruby library for RS-232 serial port communication"

  s.installed_by_version = "2.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, ["~> 1.9.3"])
    else
      s.add_dependency(%q<ffi>, ["~> 1.9.3"])
    end
  else
    s.add_dependency(%q<ffi>, ["~> 1.9.3"])
  end
end
