Gem::Specification.new do |s|
  s.name = %q{emailyak}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["apalancat"]
  s.date = %q{2010-09-28}
  s.description = %q{Email Yak (emailyak.com) library for ruby/rails}
  s.email = %q{marc@apalan.cat}
  s.files = [
    ".gitignore",
    # "LICENSE",
    "README.markdown",
    "VERSION",
    "emailyak.gemspec",
    "lib/emailyak.rb"

  ]
  s.homepage = %q{http://github.com/apalancat/emailyak}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Email Yak (emailyak.com) library}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
  end
end

