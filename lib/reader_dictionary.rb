require './lib/reader'

class ReaderDictionary
  attr_reader :library,
              :code

  def initialize(reader, library)
    @library = library
    @reader = Reader.new('braille.txt')
    @code = @reader.get_file_contents
    # require 'pry'; binding.pry
  end

  def one_letter(letter)
    if @library[letter] == nil
      ['..', '..', '..']
    else
      @library[letter]
    end
  end

  def braille_to_english(word)
    new_string = ''
    word = word.gsub!("\n", '')
    word = word.scan(/.{1,240}/)
    # test = word.scan(/.{1,2}/)
    word.each do |string|
      test1 = string.scan(/.{1,2}/)
      test = test1.each_slice(test1.length / 3).to_a
      please = test.transpose
      please.each do |array|
        new_string += one_letter(array)
      end
    end
    new_string
  end
end
# this program can translate everything you put in here as long as it is not symbols or numbers or anything weird
# ".00.00..000.0..0...00..0.0..0.000.00...00.0.0....00.000..0.0000..0...0..000.00.0\n0000.0...0.0.00...00000.0....0.00..0..00.000....0..0...0000....00...0....0.0.000\n.0..00....0...0...0.....0...0.0.0.00...00.0.0...0.0.0...0...0...0.........0.0.0."
