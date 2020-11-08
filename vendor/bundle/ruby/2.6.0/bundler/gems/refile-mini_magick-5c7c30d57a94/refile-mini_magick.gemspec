# -*- encoding: utf-8 -*-
# stub: refile-mini_magick 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "refile-mini_magick".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jonas Nicklas".freeze]
  s.date = "2020-11-07"
  s.email = ["jonas.nicklas@gmail.com".freeze]
  s.files = [".gitignore".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "lib/refile/mini_magick.rb".freeze, "lib/refile/mini_magick/version.rb".freeze, "refile-mini_magick.gemspec".freeze, "spec/refile/fixtures/landscape.jpg".freeze, "spec/refile/fixtures/portrait.jpg".freeze, "spec/refile/mini_magick_spec.rb".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Image processing via MiniMagick for Refile".freeze
  s.test_files = ["spec/refile/fixtures/landscape.jpg".freeze, "spec/refile/fixtures/portrait.jpg".freeze, "spec/refile/mini_magick_spec.rb".freeze]

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<refile>.freeze, ["~> 0.6"])
    s.add_runtime_dependency(%q<image_processing>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<mini_magick>.freeze, ["~> 4.0"])
  else
    s.add_dependency(%q<refile>.freeze, ["~> 0.6"])
    s.add_dependency(%q<image_processing>.freeze, ["~> 1.1"])
    s.add_dependency(%q<mini_magick>.freeze, ["~> 4.0"])
  end
end
