require './lib/reader'

class Dictionary
  attr_reader :library

  def initialize(reader, library)
    @library = library
    @reader = Reader.new('message.txt')
    @code = @reader.get_file_contets.delete(' ')
    @new_code = change_code
    @line1 = ""
    @line2 = ""
    @line3 = ""
  end

  def change_code
    @code.split('').map do |letter|
      if @library.keys.include?(letter)
        letter = @library[letter]
      end
    end
  end

  def print_first_line
    @new_code.each do |array|
      @line1 += "#{array[0]}"
    end
    @line1
  end

  def print_second_line
    @new_code.each do |array|
      @line2 += "#{array[1]}"
    end
    @line2
  end

  def print_third_line
    @new_code.each do |array|
      @line3 += "#{array[2]}"
    end
    @line3
  end
end
  # line1 = "#{@new_code[0]}" + ' ' + "#{@new_code[3]}" + ' ' + "#{@new_code[6]}"
  # line2 = "#{@new_code[1]}" + ' ' + "#{@new_code[4]}" + ' ' + "#{@new_code[7]}"
  # line3 = "#{@new_code[2]}" + ' ' + "#{@new_code[5]}" + ' ' + "#{@new_code[8]}"

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
