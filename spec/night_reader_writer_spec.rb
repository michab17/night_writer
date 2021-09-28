require 'rspec'
require './lib/reader'
require './lib/night_reader_writer'

describe NightReaderWriter do
  let(:writer) { NightReaderWriter.new('original_message.txt') }
  let(:reader) { Reader.new('braille.txt') }

  describe '#initialize' do
    it 'exists' do
      expect(writer).to be_an_instance_of NightReaderWriter
      expect(reader).to be_an_instance_of Reader
    end

    it 'has a file to write' do
      expect(writer.file_to_write).to eq('original_message.txt')
    end
  end
end
