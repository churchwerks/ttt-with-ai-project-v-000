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
      #binding.pry
      board.valid_move?(user_input) ? user_input.to_s : nil
    end

    def logical_move(board)

      case board.turn_count.even?
      when true
        if board.turn_count < 4
          if board.valid_move?("5")
            user_input = "5"
          elsif board.valid_move?("1")
            user_input = "1"
          elsif board.valid_move?("2")
            user_input = "2"
          elsif board.valid_move?("8")
            user_input = "8"
          else board.valid_move?("4")
            user_input = "4"
          end
        elsif board.turn_count > 3
          if board.valid_move?("9")
            user_input = "9"
          elsif board.valid_move?("2")
            user_input = "2"
          elsif board.valid_move?("8")
            user_input = "8"
          elsif board.valid_move?("4")
            user_input = "4"
          elsif board.valid_move?("6")
            user_input = "6"
          elsif board.valid_move?("7")
            user_input = "7"
          else board.valid_move?("3")
            user_input = "3"
          end
        end
        when false
        #binding.pry
        move(board)
      end
    end
  end
end
