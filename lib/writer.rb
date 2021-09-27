require './lib/reader'
require './lib/dictionary'

class Writer
  attr_reader :file_to_write

  def initialize(argv)
    @file_to_write = argv.to_s
    @dictionary = Dictionary.new('message.txt', {
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
        })
  end

  def create_file
    File.open(@file_to_write, "w") { |file| file.write @dictionary.print_first_line + "\n" + @dictionary.print_second_line + "\n" + @dictionary.print_third_line + "\n"}
    if @dictionary.code.length > 40
      File.write(@file_to_write, @dictionary.print_fourth_line + "\n" + @dictionary.print_fifth_line + "\n" + @dictionary.print_sixth_line + "\n", mode: "a")
    end
    if @dictionary.code.length > 80
      File.write(@file_to_write, @dictionary.print_seventh_line + "\n" + @dictionary.print_eighth_line + "\n" + @dictionary.print_ninth_line + "\n", mode: "a")
    end
    if @dictionary.code.length > 120
      File.write(@file_to_write, @dictionary.print_tenth_line + "\n" + @dictionary.print_eleventh_line + "\n" + @dictionary.print_twelfth_line + "\n", mode: "a")
    end
    if @dictionary.code.length > 160
      File.write(@file_to_write, @dictionary.print_thirteenth_line + "\n" + @dictionary.print_fourteenth_line + "\n" + @dictionary.print_fifteenth_line + "\n", mode: "a")
    end
    if @dictionary.code.length > 200
      File.write(@file_to_write, @dictionary.print_sixteenth_line + "\n" + @dictionary.print_seventeenth_line + "\n" + @dictionary.print_eighteenth_line + "\n", mode: "a")
    end
    if @dictionary.code.length > 240
      File.write(@file_to_write, @dictionary.print_nineteenth_line + "\n" + @dictionary.print_twentieth_line + "\n" + @dictionary.print_twenty_first_line + "\n", mode: "a")
    end
    if @dictionary.code.length > 280
      File.write(@file_to_write, @dictionary.print_twenty_second_line + "\n" + @dictionary.print_twenty_third_line + "\n" + @dictionary.print_twenty_fourth_line + "\n", mode: "a")
    end
  end
end
