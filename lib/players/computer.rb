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
       board.cells[win[0]] == board.cells[win[1]] && board.cells[win[0]] != " " || board.cells[win[0]] == board.cells[win[2]] && board.cells[win[2]] != " " || board.cells[win[1]] == board.cells[win[2]] && board.cells[win[1]] != " "


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
      if two_in_row?(board) != nil
        two_in_row?(board).each do |index|
          user_input = index
          user_input += 1
          user_input.to_s
          binding.pry
          if board.valid_move?(user_input)
            binding.pry
            user_input
          end
        end
      end
      move_two(board)
    end

    def logical_play(board)
      case board.turn_count
      when 0
        move_one(board)
        #binding.pry
      when 1
        move_two(board)
        #binding.pry
      when 2
        move_two(board)
        #binding.pry
      when 3
        move_three(board)
        binding.pry
      when 4
        move_three(board)
        binding.pry
      when 5
        move_three(board)
        binding.pry
      when 6
        move_three(board)
        binding.pry
      when 7
        move_three(board)
        binding.pry
      when 8
        move_three(board)
        binding.pry
      end
    end
  end
end
