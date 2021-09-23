require 'csv'

class Reader
  attr_reader :file_to_read

  def initialize(path)
    @file_to_read = path
  end

  def read_message
    text = File.open(@file_to_read)
    contents = text.read
    puts contents
  end
end
