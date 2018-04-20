require 'rspec'
require "eraser.rb"

RSpec.describe Eraser do
    let (:test_durability) { 47 }
    let(:eraser) { Eraser.new test_durability }

    describe "#initialize" do
        context 'when creating a new Eraser object' do
            it "stores the exact durability" do
                expect(eraser.durability).to eq test_durability
            end
        end
    end

    describe "#add_durability" do
        let(:additional_durability) { 29 }

        before { eraser.add_durability additional_durability }

        context 'when adding durability' do
            it "stores the respective additional durability" do
                expect(eraser.durability).to eq test_durability + additional_durability
            end
        end
    end
end
