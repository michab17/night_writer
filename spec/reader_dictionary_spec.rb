require 'rspec'
require './lib/reader_dictionary'

describe ReaderDictionary do
  let(:reader) { Reader.new('braille.txt') }
  let(:library) {{
      ['0.', '..', '..'] => 'a',
      ['0.', '0.', '..'] => 'b',
      ['00', '..', '..'] => 'c',
      ['00', '.0', '..'] => 'd',
      ['0.', '.0', '..'] => 'e',
      ['00', '0.', '..'] => 'f',
      ['00', '00', '..'] => 'g',
      ['0.', '00', '..'] => 'h',
      ['.0', '0.', '..'] => 'i',
      ['.0', '00', '..'] => 'j',
      ['0.', '..', '0.'] => 'k',
      ['0.', '0.', '0.'] => 'l',
      ['00', '..', '0.'] => 'm',
      ['00', '.0', '0.'] => 'n',
      ['0.', '.0', '0.'] => 'o',
      ['00', '0.', '0.'] => 'p',
      ['00', '00', '0.'] => 'q',
      ['0.', '00', '0.'] => 'r',
      ['.0', '0.', '0.'] => 's',
      ['.0', '00', '0.'] => 't',
      ['0.', '..', '00'] => 'u',
      ['0.', '0.', '00'] => 'v',
      ['.0', '00', '.0'] => 'w',
      ['00', '..', '00'] => 'x',
      ['00', '.0', '00'] => 'y',
      ['0.', '.0', '00'] => 'z'
      }}
  let(:dictionary) {ReaderDictionary.new(reader = Reader.new('message.txt'), library) }

  describe 'initialize' do
    it 'exists' do
      expect(dictionary).to be_an_instance_of ReaderDictionary
    end
  end

  describe 'one_letter' do
    it 'converts one letter from braille to english' do
      expect(dictionary.one_letter(['0.', '..', '..'])).to eq('a')
    end
  end

  describe 'translate_string' do
    it 'converts a string from braille to english' do
      word = ".00..0.0..000.0.000.0.00..000.00...00.0.00.00.0..00...0.0.0.0.00.00..00000..000.\n00000.0...0.00.00000...........0..0000...00.0...00.0...00..000.000000..000...0.0\n0.....0...0.0.0...0...0.......0...0.0...0.0.0...0.......00..0.000.....0.....000.\n0.\n..\n00"
      
      expect(dictionary.braille_to_english(word)).to eq('aaa')
    end
  end
end
