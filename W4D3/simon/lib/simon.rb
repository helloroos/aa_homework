class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize

    @sequence_length = 1
    @game_over = false
    @seq = []    

  end

  def play
    puts "Play by entering the colors flashed on the screen."
    while @game_over == false
      take_turn
    end
      game_over_message
      reset_game
  end

  def take_turn
    self.add_random_color
    print @seq
    if @game_over == false
      last_seq = require_sequence
      if last_seq == @seq
        round_success_message
        @sequence_length += 1
      else
        @game_over = true
      end
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence # from user
    user_input = gets.chomp # blue yellow red
    words = user_input.split
  end

  def add_random_color
    @seq << COLORS.sample()
  end

  def round_success_message
    puts "Correct! You can play another round."
  end

  def game_over_message
    puts "Incorrect. You lose."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

end
