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
      split_string = string.scan(/.{1,2}/)
      array_of_strings = split_string.each_slice(split_string.length / 3).to_a
      ordered_strings = array_of_strings.transpose
      ordered_strings.each do |array|
        new_string += one_letter(array)
      end
    end
    new_string
  end
end
