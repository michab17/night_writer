require './lib/reader'

class Dictionary
  attr_reader :library

  def initialize(reader, library)
    @library = library
    @code = reader.get_file_contets
    @new_code = change_code
  end

  def change_code
    @code.split('').map do |letter|
      if @library.keys.include?(letter)
        letter = @library[letter]
      end
    end.flatten
  end

  def print_new_code
    puts "#{@new_code[0]}" + ' ' + "#{@new_code[3]}" + ' ' + "#{@new_code[6]}"
    puts "#{@new_code[1]}" + ' ' + "#{@new_code[4]}" + ' ' + "#{@new_code[7]}"
    puts "#{@new_code[2]}" + ' ' + "#{@new_code[5]}" + ' ' + "#{@new_code[8]}"
  end

  # def get_first_line(letter)
  #   if letter.length > 3
  #     first_line = letter[0..2]
  #     first_line
  #   else
  #     letter
  #   end
  # end
  #
  # def get_second_line(letter)
  #   if letter.length > 3
  #     first_line = letter[4..6]
  #     first_line
  #   else
  #     letter
  #   end
  # end
  #
  # def get_third_line(letter)
  #   if letter.length > 3
  #     first_line = letter[8..10]
  #     first_line
  #   else
  #     letter
  #   end
  # end
  #
  # def split_hash(letters)
  #   letters.each do |letter, braille|
  #     letters[letter] = [get_first_line(braille), get_second_line(braille), get_third_line(braille)]
  #   end
  # end
  #
  # def print
  #
  # end

  # def print(letters)
  #   print idk(letters)
  # end
# print a[0..2]
# puts ' ' + b[0..2]
# print a[4..6]
# puts ' ' + b[4..6]
# print a[8..10]
# puts ' ' + b[8..10]
end