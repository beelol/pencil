require 'rspec'
require "durability_cost_config.rb"

RSpec.describe DurabilityCostConfig do
    let (:config) { DurabilityCostConfig.new(upcase: 2, default: 1, whitespace: 0) }

    describe '#durability_cost_of' do
        context 'getting the cost of a character' do
            it 'gets capital character cost' do
                expect(config.durability_cost_of 'A').to eq 2
            end

            it 'gets lowercase character cost' do
                expect(config.durability_cost_of 'a').to eq 1
            end

            it 'gets space cost' do
                expect(config.durability_cost_of ' ').to eq 0
            end

            it 'gets newline cost' do
                expect(config.durability_cost_of "\n").to eq 0
            end

            it 'gets appropriate cost with all cases' do
                expect(config.durability_cost_of_string "aBc ;\n ").to eq 5
            end
        end
    end
end
