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

      it "should store my describe db" do
        db_conf = {:connection => {:type => :server_db, :path => 'http://localhost:7474'}}
        subject.db = db_conf
        expect(subject.db).to eq db_conf
      end

      it "should respect additional connection parameters" do
        db_conf = {:type => :server_db, :path => 'http://localhost:7474', basic_auth: {username: 'user', password: 'pass'}}
        subject.db = db_conf
        expect(stub_const("Neo4j::Session", double().as_null_object)).to receive(:open).with(:server_db, 'http://localhost:7474', {basic_auth: {username: 'user', password: 'pass'}}) { true }
        subject.start
      end

      it "should default to nil" do
        expect(subject.db).to be_nil
      end

      it "should return default configuration" do
        expect(subject.database).to eq(:type => :server_db, :path => 'http://localhost:7475/')
      end
    end
  end
end
