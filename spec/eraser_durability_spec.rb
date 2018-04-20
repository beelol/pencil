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

    describe "#remove_durability" do
        let(:durability_reduction) { 18 }

        before { eraser.remove_durability durability_reduction }

        context 'when removing durability' do
            it "subtracts the respective durability reduction" do
                expect(eraser.durability).to eq test_durability - durability_reduction
            end
        end
    end
end
