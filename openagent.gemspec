# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{openagent}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Whiteley"]
  s.date = %q{2010-06-15}
  s.description = %q{A SIF Development Kit}
  s.email = %q{hello @nospam@ openzis.org}
  s.extra_rdoc_files = ["README", "lib/openagent.rb", "lib/openagent/messages.rb", "lib/openagent/messages/header.rb", "lib/openagent/messages/register.rb"]
  s.files = ["Manifest", "README", "Rakefile", "lib/openagent.rb", "lib/openagent/messages.rb", "lib/openagent/messages/header.rb", "lib/openagent/messages/register.rb", "openagent.gemspec"]
  s.homepage = %q{http://github.com/cwhiteley/OpenAgent}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Openagent", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{openagent}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A SIF Development Kit}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<uuid>, [">= 0"])
      s.add_runtime_dependency(%q<roxml>, [">= 0"])
      s.add_development_dependency(%q<uuid>, [">= 0"])
      s.add_development_dependency(%q<roxml>, [">= 0"])
    else
      s.add_dependency(%q<uuid>, [">= 0"])
      s.add_dependency(%q<roxml>, [">= 0"])
      s.add_dependency(%q<uuid>, [">= 0"])
      s.add_dependency(%q<roxml>, [">= 0"])
    end
  else
    s.add_dependency(%q<uuid>, [">= 0"])
    s.add_dependency(%q<roxml>, [">= 0"])
    s.add_dependency(%q<uuid>, [">= 0"])
    s.add_dependency(%q<roxml>, [">= 0"])
  end
end
