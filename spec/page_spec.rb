require 'rspec'
require "page.rb"

RSpec.describe Page do
    let (:page) { Page.new }
    let (:sample_text) { "this is a test" }

    describe '#append' do
        context 'with a blank page' do
            it 'sets the text' do
                page.append sample_text

                expect(page.text).to eq sample_text
            end
        end

        context 'with a filled page' do
            it 'appends extra text' do
                page.append sample_text

                page.append "hello!"

                expect(page.text).to eq sample_text + "hello!"
            end
        end
    end
end
