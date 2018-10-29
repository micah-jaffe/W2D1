require_relative "piece"

class Board 
  
  def initialize
    @rows = Array.new(8) { Array.new }
    
    @rows.each_with_index do |row, idx|
      if [0, 1, 6, 7].include?(idx)
        row.concat(Array.new(8) { Piece.new(nil, nil, nil) })
      else 
        row.concat(Array.new(8))
      end 
    end
  end
  
  def move_piece(start_pos, end_pos)
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  end
  
  def [](pos)
    x, y = pos
    @rows[x][y]
  end
  
  def []=(pos, val)
    x, y = pos
    @rows[x][y] = val
  end
  
  
end

