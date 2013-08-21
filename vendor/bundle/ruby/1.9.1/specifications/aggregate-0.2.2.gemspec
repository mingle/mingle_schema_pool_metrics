# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "aggregate"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joseph Ruscio"]
  s.date = "2011-03-05"
  s.description = "Aggregate is a Ruby class for accumulating aggregate statistics and includes histogram support. For a detailed README see: http://github.com/josephruscio/aggregate"
  s.email = "joe@ruscio.org"
  s.extra_rdoc_files = ["LICENSE", "README.textile"]
  s.files = ["LICENSE", "README.textile"]
  s.homepage = "http://github.com/josephruscio/aggregate"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Aggregate is a Ruby class for accumulating aggregate statistics and includes histogram support"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
