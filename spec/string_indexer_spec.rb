require 'rspec'
require "string_indexer.rb"

RSpec.describe StringIndexer do
    let (:string_indexer) { Class.new { extend StringIndexer } }
    let (:text) { "Sally sells the seashells by the seashore." }
    let (:token) { "the" }

    describe '#last_occurrence' do
        context 'with a string of text and token' do
            it 'finds the index of the last occurrence of the token in the text at its first item' do
                index = string_indexer.last_occurrence(text, token)

                expect(index).to eq text.length - 13
                expect(text[index..text.length-1]).to eq "the seashore."
            end
        end
    end

    describe '#rightmost_index_of_last_occurrence' do
        context 'with a string of text and token' do
            it 'finds the rightmost index of the last occurrence of the token in the text at its first item' do
                rightmost_index = string_indexer.rightmost_index_of_last_occurrence(text, token)

                expect(rightmost_index).to eq text.length - 11
                expect(text[rightmost_index..text.length-1]).to eq "e seashore."
            end
        end
    end
end
