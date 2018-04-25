require 'rspec'
require "string_indexer.rb"

RSpec.describe StringIndexer do
    let (:string_indexer) { Class.new { extend StringIndexer } }
    let (:text) { "Sally sells the seashells by the seashore." }
    let (:token) { "the" }

    describe '#last_occurrence' do
        context 'with a string and token' do
            it 'finds the index of the last occurrence of the token in the text at its first item' do
                index = string_indexer.last_occurrence(text, token)

                expect(index).to eq text.length - 13
                expect(text[index..text.length-1]).to eq "the seashore."
            end
        end
    end

    describe '#rightmost_index_of_last_occurrence' do
        context 'with a string and token' do
            it 'finds the rightmost index of the last occurrence of the token in the text' do
                rightmost_index = string_indexer.rightmost_index_of_last_occurrence(text, token)

                expect(rightmost_index).to eq text.length - 11
                expect(text[rightmost_index..text.length-1]).to eq "e seashore."
            end

            it 'stops from the left when it runs out of moves' do
                last_occurrence_start_index = string_indexer.last_occurrence(text, token)

                num_to_index = 4

                rightmost_index = string_indexer.rightmost_index_of_last_occurrence(text, token, num_to_index - 1)

                expect(rightmost_index).to eq last_occurrence_start_index + num_to_index - 1
            end
        end
    end

    describe '#leftmost_reachable_index_from_right' do
        context 'with a string, a token, and a number of moves' do
            let (:moves) { 1 }

            it 'finds the leftmost reachable index of the last occurrence of the token in the text using its moves' do
                leftmost_index = string_indexer.leftmost_reachable_index_from_right(text, token, moves)

                expect(leftmost_index).to eq text.length - 11 - moves
                expect(text[leftmost_index..text.length-1]).to eq "he seashore."
            end
        end
    end
end
