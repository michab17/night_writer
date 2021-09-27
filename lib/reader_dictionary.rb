require './lib/reader'

class ReaderDictionary
  attr_reader :library,
              :code,
              :new_code

  def initialize(reader, library)
    @library = library
    @reader = Reader.new('braille.txt')
    @code = @reader.get_file_contets
    # require 'pry'; binding.pry
  end

  # get character length, if less than 40 move right character count / 6
  # if the count is more than 40 move to the right 78

  # 0., 0., 00, 00
  # .., 0., .., .0
  # .., .., .., ..

  def braille_to_english
    if @code.length < 40
      @code = @code.scan(/.{1,2}/)
      split_code = @code.each_slice(@code.length / 3).to_a.transpose
      new_string = ''
      split_code.each do |array|
        @library.each do |key, value|
          if key == array
            new_string += @library[key]
          end
        end
      end
      new_string
    else
      new_string = ''
      @code = @code.scan(/.{1,80}/)
      new_code = []
      @code.each do |string|
        if string.length < 80
          new_code << string
        end
      end
      @code.each do |string|
        if string.length < 80
          @code.delete(string)
        end
      end
      test = @code.map do |string|
        string.scan(/.{1,2}/)
      end.transpose
      # split_code = test.each do |array|
      #   array.each_slice(1).to_a.transpose
      # end
      test.each do |array|
        @library.each do |key, value|
          if key == array
            new_string += @library[key]
          end
        end
      end
      # require 'pry'; binding.pry
      test1 = new_code.map do |string|
        string.scan(/.{1,2}/)
      end.transpose
      test1.each do |array|
        @library.each do |key, value|
          if key == array
            new_string += @library[key]
          end
        end
      end
      new_string
    end
  end
end
# [["0.", "0.", "00", "00"], ["..", "0.", "..", ".0"], ["..", "..", "..", ".."], ["0.", "0.", "00", "00"], ["..", "0.", "..", ".0"], ["..", "..", "..", ".."], ["0.", "0.", "00", "00"], ["..", "0.", "..", ".0"], ["..", "..", "..", ".."]]
