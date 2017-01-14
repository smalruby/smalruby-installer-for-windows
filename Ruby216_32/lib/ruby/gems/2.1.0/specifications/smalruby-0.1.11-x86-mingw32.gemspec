# -*- encoding: utf-8 -*-
# stub: smalruby 0.1.11 x86-mingw32 lib

Gem::Specification.new do |s|
  s.name = "smalruby"
  s.version = "0.1.11"
  s.platform = "x86-mingw32"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kouji Takao"]
  s.date = "2017-01-14"
  s.description = "smalruby is a 2D game development library. This is part of \"Smalruby\" project that is a learning ruby programming environment for kids."
  s.email = ["kouji.takao@gmail.com"]
  s.homepage = "https://github.com/smalruby/smalruby"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.3"
  s.summary = "2D game development library for kids."

  s.installed_by_version = "2.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, ["~> 10.4"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<redcarpet>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<travis-lint>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.16"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rubocop>, [">= 0"])
      s.add_runtime_dependency(%q<mime-types>, ["~> 1.6"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<dxruby>, ["~> 1.4.0"])
      s.add_runtime_dependency(%q<smalrubot>, ["~> 0.0.6"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, ["~> 10.4"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<redcarpet>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<travis-lint>, [">= 0"])
      s.add_dependency(%q<rubocop>, ["~> 0.16"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-rubocop>, [">= 0"])
      s.add_dependency(%q<mime-types>, ["~> 1.6"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<dxruby>, ["~> 1.4.0"])
      s.add_dependency(%q<smalrubot>, ["~> 0.0.6"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, ["~> 10.4"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<redcarpet>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<travis-lint>, [">= 0"])
    s.add_dependency(%q<rubocop>, ["~> 0.16"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-rubocop>, [">= 0"])
    s.add_dependency(%q<mime-types>, ["~> 1.6"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<dxruby>, ["~> 1.4.0"])
    s.add_dependency(%q<smalrubot>, ["~> 0.0.6"])
  end
end
