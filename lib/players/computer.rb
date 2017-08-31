module Players
  class Computer < Player
    #constant
      WIN_COMBO = [
                        [6,4,2],
                        [3,4,5],
                        [1,4,7],
                        [0,4,8]]
    def move(board)
      prng = Random.new
      user_input = prng.rand(9) + 1
      board.valid_move?(user_input) ? user_input.to_s : nil
    end

    def logical_move(board)
      case board.turn_count.even?
      when true
      if board.turn_count <= 2
        move(board)
      elsif board.valid_move?("5")
        user_input = "5"
      else
        #binding.pry
        move(board)
      end
      when false
      move(board)
    end
  end
end
end
