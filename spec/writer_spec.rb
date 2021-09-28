require 'rspec'
require './lib/reader'
require './lib/writer'

describe Writer do
  let(:writer) { Writer.new('braille.txt') }
  let(:reader) { Reader.new('message.txt') }

  describe '#initialize' do
    it 'exists' do
      expect(writer).to be_an_instance_of Writer
      expect(reader).to be_an_instance_of Reader
    end

    it 'has a file to write' do
      expect(writer.file_to_write).to eq('braille.txt')
    end
  end
end
