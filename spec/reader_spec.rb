require 'rspec'
require './lib/reader'

describe Reader do
  let(:reader) { Reader.new(ARGV[0]) }

  describe '#initialize' do
    it 'exists' do
      expect(reader).to be_an_instance_of Reader
    end

    it 'has a file to read' do
      expect(reader.file_to_read).to eq(ARGV[0])
    end
  end

  # describe '#get_file_contets' do
  #   it 'gets the contents of message.txt' do
  #     file_to_read = double("./lib/message.txt")
  #     expect(reader.get_file_contets).to eq('This is a test message')
  #   end
  # end
end
