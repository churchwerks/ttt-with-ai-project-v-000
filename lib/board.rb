class Board
  attr_accessor :cells

  def initialize
    @cells = [" "," "," "," "," "," "," "," "," "]
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  #display_board
  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end
  # Helper Method
  def input_to_index(user_input)
    index = user_input.to_i - 1
  end

  def position(index)
    self.cells[index]
  end

  # Helper Method
  def full?
    self.cells.all? { |token| token == "X" || token == "O" }
   #!@board.include?(" ") || !@board.include?("") ||
  end

  # Helper Method
  def turn_count
    self.cells.count{ |token| token == "X" || token == "O" }
  end

  # Helper Method
  def taken?(index)
    !(self.cells[index].nil? || self.cells[index] == " ")
  end

  # Helper Method
  def valid_move?(index)
    index.between?(0, 8) && !taken?(index)
  end

  def update(index, current_player)
    valid_move?(index) ? move(index, current_player) : nil
    #binding.pry
  end

  # Helper Method
    def move(index, current_player)
      self.cells[index] = current_player.token
    end
end
