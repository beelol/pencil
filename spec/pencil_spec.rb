require 'rspec'
require "pencil.rb"

RSpec.describe Pencil do
    let (:eraser_durability) { 100 }
    let (:graphite_durability) { 173 }

    let (:pencil) { Pencil.new(graphite_durability, eraser_durability) }

    let (:sample_text_to_append) { 'sally sells seashells' }
    let (:text) { '' }

    describe '#write' do
        context 'when writing text' do
            it 'appends text to a string' do
                pencil.write(text, sample_text_to_append)

                expect(text).to eq sample_text_to_append
            end
        end
    end

    describe '#sharpen' do
        context 'when sharpening' do
            it 'adds durability to the graphite' do
                durability_reduction = 100

                pencil.graphite.remove_durability durability_reduction

                pencil.sharpen

                expect(pencil.graphite.durability).to eq graphite_durability
            end
        end
    end
end
