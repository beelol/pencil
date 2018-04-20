require 'rspec'
require "eraser.rb"

RSpec.describe Eraser do
    let (:test_durability) { 47 }
    let(:graphite) { Eraser.new test_durability }

    describe "#initialize" do
        context 'when creating a new Eraser object' do
            it "stores the exact durability" do
                expect(graphite.durability).to eq test_durability
            end
        end
    end
end
