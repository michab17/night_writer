require 'rspec'
require './lib/reader'
require './lib/writer'

describe Writer do
  let(:writer) { Writer.new(ARGV[1]) }
  let(:reader) { Reader.new(ARGV[0]) }

  describe '#initialize' do
    it 'exists' do
      expect(writer).to be_an_instance_of Writer
    end

    it 'has a file to write' do
      expect(writer.file_to_write).to eq('')
    end
  end
end
