require 'database_cleaner/neo4j/base'
require 'neo4j-core'

module DatabaseCleaner
  module Neo4j
    class Transaction < Base
      attr_accessor :tx

      def start
        super
        rollback
        self.tx = ::Neo4j::Transaction.new
      end

      def clean
        rollback
      end

      private

      def rollback
        if tx
          tx.failure
          tx.close
        end
      ensure
        self.tx = nil
      end
    end
  end
end
