require 'rspec'
require "durable.rb"

RSpec.describe Durable do
    describe "#set_durability" do
        test_durability = 100

        let(:durable_object) { Class.new { extend Durable } }

        before { durable_object.set_durability test_durability }

        it "sets the respective durability" do
            expect { durable_object.durability.to eq test_durability }
        end
    end
end
