# technical test

def champions(players)
  players.delete_if { |player| player[:score].nil? || player[:age].nil? }

  players.map do |current_player|
    players.select { |player| ( player[:score] > current_player[:score] && player[:age] <= current_player[:age]) && (player[:age] < current_player[:age] && player[:score] >= current_player[:score]) }
  end.flatten.uniq
end
