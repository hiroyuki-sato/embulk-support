
Gem::Specification.new do |spec|
  spec.name          = "embulk-input-issue_suppress_jruby_error"
  spec.version       = "0.1.0"
  spec.authors       = ["Civitaspo"]
  spec.summary       = "Issue Suppress Jruby Error input plugin for Embulk"
  spec.description   = "Loads records from Issue Suppress Jruby Error."
  spec.email         = ["civitaspo@gmail.com"]
  spec.licenses      = ["MIT"]
  # TODO set this: spec.homepage      = "https://github.com/civitaspo/embulk-input-issue_suppress_jruby_error"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'YOUR_GEM_DEPENDENCY', ['~> YOUR_GEM_DEPENDENCY_VERSION']
  spec.add_development_dependency 'embulk', ['>= 0.8.18']
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
