$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "kitchen-habitat/version"

Gem::Specification.new do |s|
  s.name              = "kitchen-habitat"
  s.version           = Kitchen::Habitat::VERSION
  s.authors           = ["Steven Murawski", "Robb Kidd"]
  s.email             = ["steven.murawski@gmail.com", "robb@thekidds.org"]
  s.homepage          = "https://github.com/test-kitchen/kitchen-habitat"
  s.summary           = "Habitat provisioner for test-kitchen"
  candidates          = Dir.glob("lib/**/*") + ["README.md"]
  s.files             = candidates.sort
  s.require_paths     = ["lib"]
  s.license           = "Apache-2.0"
  s.description       = <<~EOF
    == DESCRIPTION:

    Habitat Provisioner for Test Kitchen

    == FEATURES:

    TBD

  EOF
  s.add_dependency "test-kitchen", ">= 1.4", "< 3"

  s.add_development_dependency "countloc", ">= 0.4"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec",     "~> 3.2"
  s.add_development_dependency "simplecov", "~> 0.9"

  # style and complexity libraries are tightly version pinned as newer releases
  # may introduce new and undesireable style choices which would be immediately
  # enforced in CI
  s.add_development_dependency "chefstyle"
end
