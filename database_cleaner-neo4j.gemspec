
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "database_cleaner/neo4j/version"

Gem::Specification.new do |spec|
  spec.name          = "database_cleaner-neo4j"
  spec.version       = DatabaseCleaner::Neo4j::VERSION
  spec.authors       = ["Ernesto Tagwerker", "Micah Geisel"]
  spec.email         = ["ernesto@ombulabs.com"]

  spec.summary       = "Strategies for cleaning databases using Neo4j. Can be used to ensure a clean state for testing."
  spec.description   = "Strategies for cleaning databases using Neo4j. Can be used to ensure a clean state for testing."
  spec.homepage      = "https://github.com/DatabaseCleaner/database_cleaner-neo4j"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "database_cleaner-core", "2.0.0.beta"
  spec.add_dependency "neo4j-core"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
