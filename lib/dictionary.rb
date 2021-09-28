require './lib/reader'

class Dictionary
  attr_reader :library,
              :code,
              :new_code

  def initialize(reader, library)
    @library = library
    @reader = Reader.new('message.txt')
    @code = @reader.get_file_contents.downcase
  end

  def single_character(letter)
    if @library[letter] == nil
       ['..', '..', '..']
    else
       @library[letter]
    end
  end

  def braille_word(word)
    final_word = []
    word.each_char do |letter|
      final_word << single_character(letter)
    end
    final_word = final_word.transpose
    braille_letters = []
    final_word.each do |array|
      braille_letters << array.join
    end
    braille_letters.each do |string|
      if string.length > 80
        braille_letters << string.slice!(80..-1)
      end
    end
    final_string = ""
    braille_letters.each do |string|
      final_string += string + "\n"
    end
    final_string
  end
end
