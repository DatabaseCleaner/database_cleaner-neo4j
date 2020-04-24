require 'database_cleaner/neo4j/base'

module DatabaseCleaner
  module Neo4j
    class Deletion < Base
      def clean
        ::Neo4j::Transaction.run do
          session._query('MATCH (n) OPTIONAL MATCH (n)-[r]-() DELETE n,r')
        end
      end
    end
  end
end
