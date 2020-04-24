require 'database_cleaner/neo4j'
require 'database_cleaner/spec'

RSpec.describe DatabaseCleaner::Neo4j do
  it_should_behave_like "a database_cleaner adapter"
end
