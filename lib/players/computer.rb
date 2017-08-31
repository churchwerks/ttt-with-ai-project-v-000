module Players
  class Computer < Player
    #constant
      WIN_COMBO = [
                        [0,4,8],
                        [1,4,7],
                        [3,4,5],
                        [6,4,2]]
    def move(board)
      prng = Random.new
      user_input = prng.rand(9) + 1
      board.valid_move?(user_input) ? user_input.to_s : nil
    end
    def logical_move(board)
      if board.turn_count.even?
        if board.valid_move?("5")
          user_input = "5"
        else
          move(board)
        end
      else
        index = board.cells.rindex { |x| x == "X" }
        if index == 4 && board.valid_move?("1")
          user_input = "1"
        elsif index == 7 && board.valid_move?("2")
          user_input = "2"
        elsif index == 5 && board.valid_move?("4")
          user_input = "4"
        elsif index == 2 && board.valid_move?("7")
          user_input = "7"
        elsif index == 6 && board.valid_move?("3")
          user_input = "3"
        elsif index == 3 && board.valid_move?("6")
          user_input = "6"
        elsif index == 1 && board.valid_move?("8")
          user_input = "8"
        else
          #binding.pry
          move(board)
        end
      end
    end
  end
end
