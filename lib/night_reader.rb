require './lib/reader'
require './lib/writer'
require './lib/night_reader_writer'

reader = Reader.new(ARGV[0])
writer = NightReaderWriter.new(ARGV[1])

reader.get_file_contets
writer.create_english_file
puts "Created '#{ARGV[1]}' containing #{reader.get_char_count / 6} characters"
