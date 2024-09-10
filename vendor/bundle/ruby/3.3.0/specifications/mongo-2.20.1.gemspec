# -*- encoding: utf-8 -*-
# stub: mongo 2.20.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mongo".freeze
  s.version = "2.20.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://jira.mongodb.org/projects/RUBY", "changelog_uri" => "https://github.com/mongodb/mongo-ruby-driver/releases", "documentation_uri" => "https://mongodb.com/docs/ruby-driver/current/tutorials/quick-start/", "homepage_uri" => "https://mongodb.com/docs/ruby-driver/", "source_code_uri" => "https://github.com/mongodb/mongo-ruby-driver" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["The MongoDB Ruby Team".freeze]
  s.date = "2024-07-10"
  s.description = "A pure-Ruby driver for connecting to, querying, and manipulating MongoDB\ndatabases. Officially developed and supported by MongoDB, with love for\nthe Ruby community.\n".freeze
  s.email = "dbx-ruby@mongodb.com".freeze
  s.executables = ["mongo_console".freeze]
  s.files = ["bin/mongo_console".freeze]
  s.homepage = "https://mongodb.com/docs/ruby-driver/".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Ruby driver for MongoDB".freeze

  s.installed_by_version = "3.5.11".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<bson>.freeze, [">= 4.14.1".freeze, "< 6.0.0".freeze])
end
