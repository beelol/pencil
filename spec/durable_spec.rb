require 'rspec'
require "durable.rb"

RSpec.describe Durable do
    let(:durable_object) { Class.new { extend Durable } }
    let (:test_durability) { 100 }

    before { durable_object.set_durability test_durability }

    describe "#set_durability" do
        it "sets the respective durability" do
            expect(durable_object.durability).to eq test_durability
        end
    end

    describe "#add_durability" do
        let(:additional_durability) {50}

        before {durable_object.add_durability additional_durability}

        it "adds the respective durability" do
            expect(durable_object.durability).to eq test_durability + additional_durability
        end
    end

    describe "#remove_durability" do
        let(:durability_reduction) {48}

        before {durable_object.remove_durability durability_reduction}

        it "adds the respective durability" do
            expect(durable_object.durability).to eq test_durability - durability_reduction
        end
    end
end
