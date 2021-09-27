require './lib/reader'

class Dictionary
  attr_reader :library,
              :code,
              :new_code

  def initialize(reader, library)
    @library = library
    @reader = Reader.new('message.txt')
    @code = @reader.get_file_contets.downcase
    @new_code = change_code
    @line1 = ""
    @line2 = ""
    @line3 = ""
    @line4 = ""
    @line5 = ""
    @line6 = ""
    @line7 = ""
    @line8 = ""
    @line9 = ""
    @line10 = ""
    @line11 = ""
    @line12 = ""
    @line13 = ""
    @line14 = ""
    @line15 = ""
    @line16 = ""
    @line17 = ""
    @line18 = ""
    @line19 = ""
    @line20 = ""
    @line21 = ""
    @line22 = ""
    @line23 = ""
    @line24 = ""
  end

  # create a method that has a nested enumerable to go
  # through the split code variable and then push the
  # individual lines to a big long string and then
  # print that

#   def change_code
#     split_code = @code.scan(/.{1,40}/)
#     if @code.length > 40
#       split_code.map do |string|
#         string.split('').map do |letter|
#           if @library.keys.include?(letter)
#             letter = @library[letter]
#           end
#         end
#       end
#     else
#       @code.split('').map do |letter|
#         if @library.keys.include?(letter)
#           letter = @library[letter]
#         else
#           letter = ['..', '..', '..']
#         end
#       end
#     end
#   end
#
#   def print_first_line
#     if @code.length < 40
#       @new_code.each do |array|
#         @line1 += "#{array[0]}"
#       end
#     else
#       @new_code[0].each do |array|
#         @line1 += "#{array[0]}"
#       end
#     end
#     @line1
#   end
#
#   def print_second_line
#     if @code.length < 40
#       @new_code.each do |array|
#         @line2 += "#{array[1]}"
#       end
#     else
#       @new_code[0].each do |array|
#         @line2 += "#{array[1]}"
#       end
#     end
#     @line2
#   end
#
#   def print_third_line
#     if @code.length < 40
#       @new_code.each do |array|
#         @line3 += "#{array[2]}"
#       end
#     else
#       @new_code[0].each do |array|
#         @line3 += "#{array[2]}"
#       end
#     end
#     @line3
#   end
#
#   def print_fourth_line
#     if @code.length > 40
#       @new_code[1].each do |array|
#         @line4 += "#{array[0]}"
#       end
#     end
#     @line4
#   end
#
#   def print_fifth_line
#     if @code.length > 40
#       @new_code[1].each do |array|
#         @line5 += "#{array[1]}"
#       end
#     end
#     @line5
#   end
#
#   def print_sixth_line
#     if @code.length > 40
#       @new_code[1].each do |array|
#         @line6 += "#{array[2]}"
#       end
#     end
#     @line6
#   end
#
#   def print_seventh_line
#     if @code.length > 80
#       @new_code[2].each do |array|
#         @line7 += "#{array[0]}"
#       end
#     end
#     @line7
#   end
#
#   def print_eighth_line
#     if @code.length > 80
#       @new_code[2].each do |array|
#         @line8 += "#{array[1]}"
#       end
#     end
#     @line8
#   end
#
#   def print_ninth_line
#     if @code.length > 80
#       @new_code[2].each do |array|
#         @line9 += "#{array[2]}"
#       end
#     end
#     @line9
#   end
#
#   def print_tenth_line
#     if @code.length > 120
#       @new_code[3].each do |array|
#         @line10 += "#{array[0]}"
#       end
#     end
#     @line10
#   end
#
#   def print_eleventh_line
#     if @code.length > 120
#       @new_code[3].each do |array|
#         @line11 += "#{array[1]}"
#       end
#     end
#     @line11
#   end
#
#   def print_twelfth_line
#     if @code.length > 120
#       @new_code[3].each do |array|
#         @line12 += "#{array[2]}"
#       end
#     end
#     @line12
#   end
#
#   def print_thirteenth_line
#     if @code.length > 160
#       @new_code[4].each do |array|
#         @line13 += "#{array[0]}"
#       end
#     end
#     @line13
#   end
#
#   def print_fourteenth_line
#     if @code.length > 160
#       @new_code[4].each do |array|
#         @line14 += "#{array[1]}"
#       end
#     end
#     @line14
#   end
#
#   def print_fifteenth_line
#     if @code.length > 160
#       @new_code[4].each do |array|
#         @line15 += "#{array[2]}"
#       end
#     end
#     @line15
#   end
#
#   def print_sixteenth_line
#     if @code.length > 200
#       @new_code[5].each do |array|
#         @line16 += "#{array[0]}"
#       end
#     end
#     @line16
#   end
#
#   def print_seventeenth_line
#     if @code.length > 200
#       @new_code[5].each do |array|
#         @line17 += "#{array[1]}"
#       end
#     end
#     @line17
#   end
#
#   def print_eighteenth_line
#     if @code.length > 200
#       @new_code[5].each do |array|
#         @line18 += "#{array[2]}"
#       end
#     end
#     @line18
#   end
#
#   def print_nineteenth_line
#     if @code.length > 240
#       @new_code[6].each do |array|
#         @line19 += "#{array[0]}"
#       end
#     end
#     @line19
#   end
#
#   def print_twentieth_line
#     if @code.length > 240
#       @new_code[6].each do |array|
#         @line20 += "#{array[1]}"
#       end
#     end
#     @line20
#   end
#
#   def print_twenty_first_line
#     if @code.length > 240
#       @new_code[6].each do |array|
#         @line21 += "#{array[2]}"
#       end
#     end
#     @line21
#   end
#
#   def print_twenty_second_line
#     if @code.length > 280
#       @new_code[7].each do |array|
#         @line22 += "#{array[0]}"
#       end
#     end
#     @line22
#   end
#
#   def print_twenty_third_line
#     if @code.length > 280
#       @new_code[7].each do |array|
#         @line23 += "#{array[1]}"
#       end
#     end
#     @line23
#   end
#
#   def print_twenty_fourth_line
#     if @code.length > 280
#       @new_code[7].each do |array|
#         @line24 += "#{array[2]}"
#       end
#     end
#     @line24
#   end
# end
