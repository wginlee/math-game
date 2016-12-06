class Player

  attr_accessor :player_id, :lives

  def initialize(player_id)
    @player_id = player_id
    @lives = 3
  end

  def drop_life
    @lives -= 1
  end

  def game_over?
    @lives == 0
  end
end

