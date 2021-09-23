require './lib/reader'

reader = Reader.new(ARGV[0])

reader.read_message
