require_relative "board"
require_relative "cursor"
require "colorize"

class Display
  def initialize(board)
    @cursor = Cursor.new([0, 0], board)
  end
end