require './lib/reader'
require './lib/dictionary'
require './lib/reader_dictionary'

class NightReaderWriter
  attr_reader :file_to_write

  def initialize(argv)
    @file_to_write = argv.to_s
    @reader_dictionary = ReaderDictionary.new('braille.txt', {
        ['..', '..', '..'] => ' ',
        ['0.', '..', '..'] => 'a',
        ['0.', '0.', '..'] => 'b',
        ['00', '..', '..'] => 'c',
        ['00', '.0', '..'] => 'd',
        ['0.', '.0', '..'] => 'e',
        ['00', '0.', '..'] => 'f',
        ['00', '00', '..'] => 'g',
        ['0.', '00', '..'] => 'h',
        ['.0', '0.', '..'] => 'i',
        ['.0', '00', '..'] => 'j',
        ['0.', '..', '0.'] => 'k',
        ['0.', '0.', '0.'] => 'l',
        ['00', '..', '0.'] => 'm',
        ['00', '.0', '0.'] => 'n',
        ['0.', '.0', '0.'] => 'o',
        ['00', '0.', '0.'] => 'p',
        ['00', '00', '0.'] => 'q',
        ['0.', '00', '0.'] => 'r',
        ['.0', '0.', '0.'] => 's',
        ['.0', '00', '0.'] => 't',
        ['0.', '..', '00'] => 'u',
        ['0.', '0.', '00'] => 'v',
        ['.0', '00', '.0'] => 'w',
        ['00', '..', '00'] => 'x',
        ['00', '.0', '00'] => 'y',
        ['0.', '.0', '00'] => 'z'
        })
  end

  def create_english_file
    File.open(@file_to_write, "w") { |file| file.write @reader_dictionary.braille_to_english }
  end
end
