require 'rspec'
require "eraser.rb"

RSpec.describe Eraser do
    let (:durability) { 13 }
    let(:eraser) { Eraser.new durability }

    let (:text) { 'Sally sells the seashells by the seashore, then she sells the seashells again.' }

    let (:token_to_erase) { 'seashells' }

    let (:index_of_last_occurrence) { text.rindex(token_to_erase) }

    let (:range_of_last_occurrence) { index_of_last_occurrence..(index_of_last_occurrence + token_to_erase.length-1) }

    let (:replacer) {' '}

    describe '#erase' do
        context 'when erasing text' do
            it 'replaces the last occurrence of token with replacer character' do
                range = range_of_last_occurrence

                eraser.erase(text, token_to_erase)

                expect(text[range]).to eq replacer * token_to_erase.length
            end
        end
    end

end
