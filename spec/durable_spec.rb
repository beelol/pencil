require 'rspec'
require "durable.rb"

RSpec.describe Durable do
    let(:durable_object) { Class.new { extend Durable } }
    let (:test_durability) { 100 }

    before { durable_object.set_durability test_durability }

    describe '#set_durability' do
        context 'when setting durability' do
            it 'stores the exact durability' do
                expect(durable_object.durability).to eq test_durability
            end
        end
    end

    describe '#add_durability' do
        let(:additional_durability) { 50 }

        before { durable_object.add_durability additional_durability }

        context 'when adding durability' do
            it 'stores the respective additional durability' do
                expect(durable_object.durability).to eq test_durability + additional_durability
            end
        end
    end

    describe '#remove_durability' do
        context 'when removing durability' do
            let(:durability_reduction) { 48 }

            before { durable_object.remove_durability durability_reduction }

            it 'subtracts the respective durability reduction' do
                expect(durable_object.durability).to eq test_durability - durability_reduction
            end
        end

        context 'when reduction value is larger than durability' do
            let(:durability_reduction) { test_durability + 10 }

            before { durable_object.remove_durability durability_reduction }

            it 'does not reach a negative value' do
                expect(durable_object.durability).to eq 0
            end
        end
    end
end
