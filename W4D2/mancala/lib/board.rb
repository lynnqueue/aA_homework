class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    place_stones
  end

  def place_stones
    @cups.map! {|cup| cup << ["stone", "stone", "stone", "stone"] unless @cups.index(cup) == 6 || @cups.index(cup) == 13}
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 13
      raise "Invalid starting cup"
    elsif @cups[start_pos].count == 0
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    num_stones = @cups[start_pos].count
    @cups[start_pos] = []

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
    @cups[7..12].all? {|cup| cup.count == 0} || @cups.take(6).all? {|cup| cup.count == 0}
  end

  def winner
  end
end
