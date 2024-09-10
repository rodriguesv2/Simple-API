# -*- encoding: utf-8 -*-
# stub: mongoid 1.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid".freeze
  s.version = "1.0.6".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Durran Jordan".freeze]
  s.date = "2010-01-14"
  s.email = "durran@gmail.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze]
  s.files = ["README.rdoc".freeze]
  s.homepage = "http://mongoid.org".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "1.3.5".freeze
  s.summary = "ODM framework for MongoDB".freeze

  s.installed_by_version = "3.5.11".freeze if s.respond_to? :installed_by_version

  s.specification_version = 3

  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 2.2.2".freeze])
  s.add_runtime_dependency(%q<mongo>.freeze, [">= 0.18.2".freeze])
  s.add_runtime_dependency(%q<durran-validatable>.freeze, [">= 2.0.1".freeze])
  s.add_runtime_dependency(%q<leshill-will_paginate>.freeze, [">= 2.3.11".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 1.2.9".freeze])
  s.add_development_dependency(%q<mocha>.freeze, [">= 0.9.8".freeze])
end
