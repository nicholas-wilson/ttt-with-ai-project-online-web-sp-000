class Players::Computer < Player
  attr_accessor :marker

  def move(board)
    if board.turn_count == 0 || board.turn_count == 1
      if board.valid_move?(5)
        board.update(5, self)
      end
    elsif
    end
  end

  def open_spots(board)
    spots = []
    index = 0
    9.times do
      if board.cells[index] == " "
        spots << (index + 1)
      end
      index += 1
    end
  end
end
