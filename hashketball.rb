require_relative './game_hash.rb'

# This method returns the team's status
def home_or_away(team_name)
  game_hash[team_name][:status]
end

# Write a new method that returns a team's colors
def team_colors(team_name)
  game_hash[team_name][:team_colors]
end

def print_player_points(team_name)
  game_hash[team_name][:players].each do |player|
    puts "#{player[:name]}: #{player[:points]} points"
  end
end

def player_stats(team, player_name)
  game_hash[team][:players].find do |player|
    player[:name] == player_name
  end
end

def shoe_size(team, player_name)
  game_hash[team][:players].collect do |player|
    player[:shoe] if player[:name] == player_name
  end.compact.first
end

def big_shoe_rebounds
  biggest_shoe = 0
  rebounds = 0
  game_hash.each do |team,stats|
    stats[:players].each do |player|
      if player[:shoe] > biggest_shoe 
        biggest_shoe = player[:shoe] 
        rebounds = player[:rebounds]
      end
    end
  end
  rebounds
end

def slam_dunks(player_name)
  game_hash.collect do |team,stats|
    stats[:players].collect do |player|
      player[:slam_dunks] if player[:name] == player_name
    end
  end.flatten.compact.first
end


