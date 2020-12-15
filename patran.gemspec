require_relative 'lib/patran/version'

Gem::Specification.new do |spec|
  spec.name          = "patran"
  spec.version       = Patran::VERSION
  spec.authors       = ["doew"]
  spec.email         = ["git@doew.jp"]

  spec.summary       = %q{Patran is a easy methods to implement about package tracking number.}
  spec.description   = %q{You can use some confortable methods for tracking number with this gem.}
  spec.homepage      = "https://github.com/doew/patran"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/doew/patran"
  spec.metadata["changelog_uri"] = "https://github.com/doew/patran"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
