## Objectives
# 1. Build a command-line interface (CLI).
# 2. Create a domain model with multiple relating and collaborating objects.

class Board
  attr_accessor :cells

  def initialize
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def reset!
    # resets the state of the cells in the board = (new array, 9 cells)
    @cells = Array.new(9, " ")
  end

  def display
    # prints the board
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(number)
    # takes in user input and returns the value of the board cell
    number = number.to_i
    @cells[number -1]
  end

  def full?
    # returns true for full board
    # else board empty or game in-progress = false
    @cells.all?{|cell| cell == "X" || cell =="O"}
  end

  def turn_count
    # returns the amount of turns based on cell value
    cell_count = []
    @cells.each do |cell|
      if cell == "X" || cell == "O"
        cell_count << cell
      end
    end
    cell_count.count
  end

  def taken?
    # returns true if the position is X or O
    if @cells.position(number).include?("X") || @cells.position(number).include?("O")
      true
    else
      false 
    end
  end

end
