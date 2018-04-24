require 'rspec'
require "pencil.rb"

RSpec.describe Pencil do
    let (:pencil) { Pencil.new }

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
end
