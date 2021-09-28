require 'rspec'
require './lib/dictionary'

describe Dictionary do
  let(:reader) { Reader.new('message.txt') }
  let(:braille_reader) { Reader.new('braille.txt') }
  let(:library) {{
      'a' => ['0.', '..', '..'],
      'b' => ['0.', '0.', '..'],
      'c' => ['00', '..', '..'],
      'd' => ['00', '.0', '..'],
      'e' => ['0.', '.0', '..'],
      'f' => ['00', '0.', '..'],
      'g' => ['00', '00', '..'],
      'h' => ['0.', '00', '..'],
      'i' => ['.0', '0.', '..'],
      'j' => ['.0', '00', '..'],
      'k' => ['0.', '..', '0.'],
      'l' => ['0.', '0.', '0.'],
      'm' => ['00', '..', '0.'],
      'n' => ['00', '.0', '0.'],
      'o' => ['0.', '.0', '0.'],
      'p' => ['00', '0.', '0.'],
      'q' => ['00', '00', '0.'],
      'r' => ['0.', '00', '0.'],
      's' => ['.0', '0.', '0.'],
      't' => ['.0', '00', '0.'],
      'u' => ['0.', '..', '00'],
      'v' => ['0.', '0.', '00'],
      'w' => ['.0', '00', '.0'],
      'x' => ['00', '..', '00'],
      'y' => ['00', '.0', '00'],
      'z' => ['0.', '.0', '00']
      # " " => ['..', '..', '..']
      }}
  let(:dictionary) {Dictionary.new(reader = Reader.new('message.txt'), library)}

  describe 'initialize' do
    it 'exists' do
      expect(dictionary).to be_an_instance_of Dictionary
    end

    it 'has a dictionary' do
      expect(dictionary.library).to eq(library)
    end
  end

  describe 'single_character' do
    it 'prints a braille single character' do
      expect(dictionary.single_character(' ')).to eq(["..", "..", ".."])
    end
  end

  describe 'translates a space' do
    it 'replaces a space with an underscore' do
      expected = "..\n..\n..\n"

      expect(dictionary.braille_word(' ')).to eq(expected)
    end
  end

  describe 'three_characters' do
    it 'prints three braille characters' do
      expect(dictionary.braille_word('bar')).to eq("0.0.0.\n0...00\n....0.\n")
    end
  end

  describe 'wrap' do
    it 'wraps after 40 characters' do
      string = 'the cheese is old and moldy wheres the ba'

      expected =".00.0...000.0.0..00....0.0..0.0.00..0.0000..000.0.0000...00.0.0.0..0...00.0...0.\n0000.0....00.0.00..0..0.0....00..0.....0.0.....00..0.0..0000.000.00...0000.0..0.\n0...............0.......0...0.0.......0.....0.0.0...00...0....0...0...0.........\n0.\n..\n..\n"
      expect(dictionary.braille_word(string)).to eq(expected)
    end
  end
end
