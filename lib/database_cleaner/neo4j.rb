require "database_cleaner/neo4j/version"
require "database_cleaner/core"
require "database_cleaner/neo4j/transaction"
require "database_cleaner/neo4j/truncation"
require "database_cleaner/neo4j/deletion"

DatabaseCleaner[:neo4j].strategy = :transaction
