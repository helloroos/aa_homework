require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    until @cups.first.length == 4
      @cups.each { |cup| cup << :stone }
    end
    @cups[6] = [] && @cups[13] = []
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 13
    raise "Starting cup is empty" if @cups[start_pos].length == 0
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    until stones.empty?
      stone = stones.shift
      next_cup_idx = (start_pos += 1) % 13
      @cups[next_cup_idx] << stone
    end
    render
    ending_cup_idx = (next_cup_idx -= 1) % 13
    next_turn(ending_cup_idx)
    return :switch if @cups[ending_cup_idx].empty?
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
