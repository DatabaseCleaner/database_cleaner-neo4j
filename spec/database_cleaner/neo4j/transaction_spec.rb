require 'neo4j-core'
require 'database_cleaner/neo4j/transaction'
require 'database_cleaner/spec'

module DatabaseCleaner
  module Neo4j

    RSpec.describe Transaction do
      before(:all) do
        DatabaseCleaner[:neo4j, :connection => {:type => :server_db, :path => 'http://localhost:7474'}]
      end

      it_behaves_like "a database_cleaner strategy"

      describe "start" do
        it "should start a transaction"
      end

      describe "clean" do
        it "should finish a transaction"
      end
    end
  end
end
