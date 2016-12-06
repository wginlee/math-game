require_relative 'question'



def turn(current_player, other_player)
  q = Question.new

  puts "----- NEW TURN -----"
  puts "Player #{current_player.player_id}: #{q.ask}"
  guess = gets.chomp

  if q.correct?(guess)
    puts 'Yer right on'
  else
    puts 'Yer dead wrong'
    current_player.drop_life
    puts "P#{current_player.player_id}: #{current_player.lives}/3 vs P#{other_player.player_id}: #{other_player.lives}/3"
  end



end