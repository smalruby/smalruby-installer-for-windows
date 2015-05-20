# -*- encoding: utf-8 -*-
# stub: smalruby-editor 0.3.1 x86-mingw32 lib

Gem::Specification.new do |s|
  s.name = "smalruby-editor"
  s.version = "0.3.1"
  s.platform = "x86-mingw32"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kouji Takao"]
  s.date = "2015-05-20"
  s.description = "The smalruby-editor is a visual programming editor that can create aRuby script by combining individual blocks similar to Scratch. It can also enter the program as better than Scratch."
  s.email = ["kouji.takao@gmail.com"]
  s.executables = ["smalruby-editor"]
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["LICENSE", "README.rdoc", "bin/smalruby-editor"]
  s.homepage = "https://github.com/smalruby/smalruby-editor"
  s.licenses = ["MIT"]
  s.rdoc_options = ["\n    --title Smalruby Editor -- A visual programming editor\n    --line-numbers\n    --main README\n    --exclude app\n    --exclude bin\n    --exclude config\n    --exclude db\n    --exclude features\n    --exclude lib\n    --exclude log\n    --exclude pkg\n    --exclude public\n    --exclude script\n    --exclude spec\n    --exclude test\n    --exclude tmp\n    --exclude vendor\n  "]
  s.rubygems_version = "2.2.3"
  s.summary = "A visual programming editor."

  s.installed_by_version = "2.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["= 4.0.3"])
      s.add_runtime_dependency(%q<sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>, ["~> 4.0.0"])
      s.add_runtime_dependency(%q<uglifier>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<coffee-rails>, ["~> 4.0.0"])
      s.add_runtime_dependency(%q<jbuilder>, ["~> 2.0"])
      s.add_runtime_dependency(%q<flatstrap-sass>, [">= 0"])
      s.add_runtime_dependency(%q<shared-mime-info>, [">= 0"])
      s.add_runtime_dependency(%q<launchy>, [">= 0"])
      s.add_runtime_dependency(%q<mime-types>, ["~> 1.16"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<settingslogic>, [">= 0"])
      s.add_runtime_dependency(%q<smalruby>, ["~> 0.1.7"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["= 4.0.3"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<sass-rails>, ["~> 4.0.0"])
      s.add_dependency(%q<uglifier>, [">= 1.3.0"])
      s.add_dependency(%q<coffee-rails>, ["~> 4.0.0"])
      s.add_dependency(%q<jbuilder>, ["~> 2.0"])
      s.add_dependency(%q<flatstrap-sass>, [">= 0"])
      s.add_dependency(%q<shared-mime-info>, [">= 0"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<mime-types>, ["~> 1.16"])
      s.add_dependency(%q<haml-rails>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<settingslogic>, [">= 0"])
      s.add_dependency(%q<smalruby>, ["~> 0.1.7"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["= 4.0.3"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<sass-rails>, ["~> 4.0.0"])
    s.add_dependency(%q<uglifier>, [">= 1.3.0"])
    s.add_dependency(%q<coffee-rails>, ["~> 4.0.0"])
    s.add_dependency(%q<jbuilder>, ["~> 2.0"])
    s.add_dependency(%q<flatstrap-sass>, [">= 0"])
    s.add_dependency(%q<shared-mime-info>, [">= 0"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<mime-types>, ["~> 1.16"])
    s.add_dependency(%q<haml-rails>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<settingslogic>, [">= 0"])
    s.add_dependency(%q<smalruby>, ["~> 0.1.7"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
