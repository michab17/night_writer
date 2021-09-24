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
      expect(reader.get_file_contets).to eq('This is a test message.')
    end
  end

  describe 'get_char_count' do
    it 'gets the count of characters in the file that is read' do
      expect(reader.get_char_count).to eq(23)
    end
  end
end
