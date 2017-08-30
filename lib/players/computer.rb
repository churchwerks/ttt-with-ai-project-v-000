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
  end
end
