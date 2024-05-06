# -*- encoding: utf-8 -*-
# stub: mutations 0.9.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mutations".freeze
  s.version = "0.9.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jonathan Novak".freeze]
  s.date = "2020-04-08"
  s.description = "Compose your business logic into commands that sanitize and validate input.".freeze
  s.email = "jnovak@gmail.com".freeze
  s.homepage = "http://github.com/cypriss/mutations".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Compose your business logic into commands that sanitize and validate input.".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 4".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
end
