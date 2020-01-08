class Players::Computer < Player
  attr_accessor :marker

  def move(board)
    if board.turn_count == 0 || board.turn_count == 1
      if self.open_spots(board).include?(5)
        board.update(5, self)
      end
    elsif one_off_win?(board)
      spot = one_off_win?(board)
      board.update(spot, self)
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
    spots
  end

  def one_off_win?(board)
    one_off = false

  end
end
