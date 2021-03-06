require './lib/reader'
require './lib/writer'

reader = Reader.new(ARGV[0])
writer = Writer.new(ARGV[1])

reader.get_file_contents
writer.create_file
puts "Created 'braille.txt' containing #{reader.get_char_count} characters"
