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
    DIA_CORNER = [[0, 8], [3, 7]]
      def move(board)
        #call methods below based on turn_count
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
          when 4
            move_three(board)
            #binding.pry
          when 5
            move_three(board)
            #binding.pry
          when 6
            move_three(board)
            #binding.pry
          when 7
            move_three(board)
            #binding.pry
          when 8
            move_three(board)
            #binding.pry
          end
      end

    def two_in_row?(board)
      WIN_COMBO.find do |win|
       ((board.cells[win[0]] == board.cells[win[1]]) && board.cells[win[2]] == " " && board.cells[win[0]] != " ") ||
       ((board.cells[win[0]] == board.cells[win[2]]) && board.cells[win[1]] == " " && board.cells[win[0]] != " ") ||
       ((board.cells[win[1]] == board.cells[win[2]]) && board.cells[win[0]] == " " && board.cells[win[1]] != " ")
      end
    end

    def opposite_corners(board)
      DIA_CORNER.find do |dia|
        board.cells[win[0]] == board.cells[win[1]]
      end
    end

    def random_move(board)
      prng = Random.new
      input = prng.rand(9) + 1
      input.to_s
    end

    def move_one(board)
      random_move(board)
    end

    def move_two(board)
      if board.valid_move?("5")
        input = "5"
      elsif board.valid_move?("1")
        input = "1"
      elsif board.valid_move?("3")
        input = "3"
      elsif board.valid_move?("7")
        input = "7"
      elsif board.valid_move?("9")
        input = "9"
      end
    end

    def move_three(board)
      if opposite_corners(board) == nil
        if board.valid_move?("1")
          input = "1"
        elsif board.valid_move?("3")
          input = "3"
        elsif board.valid_move?("7")
          input = "7"
        elsif board.valid_move?("9")
          input = "9"
        end
      else
        index = block.detect { |index| board.cells[index] != " " }
        case index
        when 0
          
        end

      end
    end

    def move_four(board)
      block = two_in_row?(board)
      if block == nil
        move_two(board)
      else
        index = block.detect { |index| board.cells[index] == " " }
        input = (index +=1).to_s
      end
    end

    def move_five(board)
      block = two_in_row?(board)
      if block == nil
        move_two(board)
      else
        index = block.detect { |index| board.cells[index] == " " }
        input = (index +=1).to_s
      end
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
      when 4
        move_three(board)
        #binding.pry
      when 5
        move_three(board)
        #binding.pry
      when 6
        move_three(board)
        #binding.pry
      when 7
        move_three(board)
        #binding.pry
      when 8
        move_three(board)
        #binding.pry
      end
    end
  end
end
