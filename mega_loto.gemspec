
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mega_loto/version"

Gem::Specification.new do |spec|
  spec.name          = "mega_loto"
  spec.version       = MegaLoto::VERSION
  spec.authors       = ["Bryce"]
  spec.email         = ["xx8611205@gmail.com"]

  spec.summary       = "a ruby gem test demo"
  spec.description   = "a demo that practice to create a gem"
  spec.homepage      = "https://github.com/YaoJuan/by_mega"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
