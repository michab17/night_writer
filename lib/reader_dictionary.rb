require './lib/reader'

class ReaderDictionary
  attr_reader :library,
              :code

  def initialize(reader, library)
    @library = library
    @reader = Reader.new('braille.txt')
    @code = @reader.get_file_contents
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
