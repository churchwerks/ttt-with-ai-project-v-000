module Players
  class Computer < Player
    #constant
    WIN_COMBO = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [6,4,2]]

    def two_in_row?(board)
      WIN_COMBO.find do |win|
       board.cells[win[0]] == board.cells[win[1]] || board.cells[win[0]] == board.cells[win[2]] || board.cells[win[0]] == board.cells[win[3]]
      end
    end

    def random_move(board)
      prng = Random.new
      user_input = prng.rand(9) + 1
      board.valid_move?(user_input) ? user_input.to_s : nil
    end

    def move_one(board)
      random_move(board)
    end

    def move_two(board)
      if board.valid_move?("5")
        user_input = "5"
      elsif board.valid_move?("1")
        user_input = "1"
      elsif board.valid_move?("3")
        user_input = "3"
      elsif board.valid_move?("7")
        user_input = "7"
      elsif board.valid_move?("9")
        user_input = "9"
      end
    end

    def move_three(board)
      two_in_row?(board).each do |index|
        if board.valid_move?((index += 1).to_s)
          user_input = (index += 1).to_s
        end
      end
    end
  end
end
