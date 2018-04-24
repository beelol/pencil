require 'rspec'
require "pencil_length.rb"

RSpec.describe PencilLength do
    let (:test_durability) { 285 }
    let(:pencil_length) { PencilLength.new test_durability }

    describe "#initialize" do
        context 'when creating a new PencilLength object' do
            it "stores the exact durability" do
                expect(pencil_length.durability).to eq test_durability
            end
        end
    end

    describe "#add_durability" do
        let(:additional_durability) { 29 }

        before { pencil_length.add_durability additional_durability }

        context 'when adding durability' do
            it "stores the respective additional durability" do
                expect(pencil_length.durability).to eq test_durability + additional_durability
            end
        end
    end

    describe "#remove_durability" do

        context 'when removing durability' do
            let(:durability_reduction) { 67 }

            before { pencil_length.remove_durability durability_reduction }

            it "subtracts the respective durability reduction" do
                expect(pencil_length.durability).to eq test_durability - durability_reduction
            end
        end

        context 'when reduction value is larger than durability' do
            let(:durability_reduction) { test_durability + 25 }

            before { pencil_length.remove_durability durability_reduction }

            it 'does not reach a negative value' do
                expect(pencil_length.durability).to eq 0
            end
        end
    end
end
