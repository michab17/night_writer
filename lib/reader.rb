class Reader
  attr_reader :file_to_read

  def initialize(argv)
    @file_to_read = argv
  end

  def get_file_contets
    text = File.open(@file_to_read)
    contents = text.read
    contents
  end
end
