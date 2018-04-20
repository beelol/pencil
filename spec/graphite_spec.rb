require 'rspec'
require "graphite.rb"

RSpec.describe Graphite do
    let (:test_durability) { 285 }
    let(:graphite) { Graphite.new test_durability }

    describe "#initialize" do
        it "sets the respective durability" do
            expect(graphite.durability).to eq test_durability
        end
    end

    describe "#add_durability" do
        let(:additional_durability) {29}

        before {graphite.add_durability additional_durability}

        it "adds the respective durability" do
            expect(graphite.durability).to eq test_durability + additional_durability
        end
    end

    describe "#remove_durability" do
        let(:durability_reduction) {67}

        before {graphite.remove_durability durability_reduction}

        it "removes the respective durability" do
            expect(graphite.durability).to eq test_durability - durability_reduction
        end
    end
end
