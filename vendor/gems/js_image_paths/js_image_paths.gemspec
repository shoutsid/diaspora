# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "js_image_paths/version"

Gem::Specification.new do |spec|
  spec.name          = "js_image_paths"
  spec.version       = JsImagePaths::VERSION
  spec.authors       = ["Jonne Haß"]
  spec.email         = ["me@jhass.eu"]
  spec.summary       = "Rails image paths in your JS"
  spec.description   = "Easily access your image assets in your JavaScript code"
  spec.homepage      = "https://github.com/jhass/js_image_paths"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb", "app/**/*", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  # Vendored from the released 0.2.0, whose gemspec caps `rails < 8.0`. The code below is
  # unchanged; the cap was written before Rails 8 existed and is the only thing that keeps the
  # gem out of a Rails 8 bundle. This copy is what the application declares until a release
  # with the cap widened exists.
  spec.add_dependency "rails", ">= 4.0", "< 9.0"
  spec.add_dependency "sprockets", ">= 3.0.0"
end
