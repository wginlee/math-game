require_relative 'player'
require_relative 'turn'


p1 = Player.new(1)
p2 = Player.new(2)

loop do
  if p2.game_over?
    @winner = p1
    break
  else
    turn(p1, p2)
  end

  if p1.game_over?
    @winner = p2
    break
  else
    turn(p2, p1)
  end

end

puts "Player #{@winner.player_id} wins with a score of #{@winner.lives}/3"
puts "----- GAME OVER -----"
puts "Bye!"