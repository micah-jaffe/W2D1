require_relative "board"
require_relative "cursor"
require "colorize"

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end
  
  def render
    @board.rows.each do |array|
      array.each do |square|
        print square.to_s
      end
      puts
    end
  end
  
  
  
end