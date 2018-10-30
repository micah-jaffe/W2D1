class Piece 
  def initialize(color = nil, board = nil, pos = nil)
    @color = color
    @board = board 
    @pos = pos
  end
  
  def to_s
    "\u2654".encode('utf-8')
  end
  
end