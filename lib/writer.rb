require './lib/reader'

class Writer
  attr_reader :file_to_write

  def initialize(argv)
    @file_to_write = argv.to_s
    @reader = Reader.new(ARGV[0])
  end

  def create_file
    File.open(@file_to_write, "w") { |file| file.write @reader.get_file_contets }
  end
end
