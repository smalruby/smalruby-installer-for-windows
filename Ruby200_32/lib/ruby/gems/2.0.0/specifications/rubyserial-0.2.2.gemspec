# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rubyserial"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adrian Zankich", "Theron Boerner", "Javier Cervantes"]
  s.date = "2015-01-16"
  s.description = "FFI Ruby library for RS-232 serial port communication"
  s.homepage = "https://github.com/hybridgroup/rubyserial"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "FFI Ruby library for RS-232 serial port communication"

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
