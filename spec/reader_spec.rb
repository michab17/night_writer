require 'rspec'
require './lib/reader'

describe Reader do
  let(:reader) { Reader.new('message.txt') }

  describe '#initialize' do
    it 'exists' do
      expect(reader).to be_an_instance_of Reader
    end

    it 'has a file to read' do
      expect(reader.file_to_read).to eq('message.txt')
    end
  end

  describe '#get_file_contets' do
    it 'gets the contents of message.txt' do
      file_to_read = double("./lib/message.txt")

      expected = "this program can translate everything you put in here as long as it is not symbols or numbers or anything weird"
      expect(reader.get_file_contents).to eq(expected)
    end
  end

  describe 'get_char_count' do
    it 'gets the count of characters in the file that is read' do
      expect(reader.get_char_count).to eq(111)
    end
  end
end
