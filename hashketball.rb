require_relative './game_hash.rb'
require 'pry'

# This method returns the team's status
def home_or_away(team_name)
  game_hash[team_name][:status]
end

# Write a new method that returns a team's colors. If you're not sure where to start, take a look at the method above and follow the pattern.

def team_colors(team_name)
  game_hash[team_name][:team_colors]
end 

def return_players(team_name)
  game_hash[team_name][:players]
end

def print_player_points(team_name)
  game_hash[team_name][:players].each {|player_info| puts "#{player_info[:name]}: #{player_info[:points]} points"}
end

def player_stats(player_team, player_name)
  game_hash[player_team][:players].detect do |stat, info|
    if stat.has_value?(player_name)
      game_hash[player_team][:players].each do |key, val|
        puts "#{key}: #{val}"
      end
    end
  end
end

def shoe_size(player_team, player_name)
  shoe = ''
  # shoe = []
  game_hash[player_team][:players].detect do |stat, info|
    if stat.has_value?(player_name)
      shoe = stat[:shoe]  
      # shoe << stat[:shoe] 
    end
  end
  shoe
  # shoe[0]
end

def slam_dunks(player_team, player_name)
  dunks = ''
  game_hash[player_team][:players].each do |stat, info|
    if stat.has_value?(player_name)
      dunks = stat[:slam_dunks]
    end
  end
  dunks
end

def big_shoe_slam_dunks(team_name)
  biggest_shoe_slam_dunks = ''
  game_hash[team_name][:players].detect do |stat, info|
    if stat[:shoe] == biggest_shoe_size(team_name)
      biggest_shoe_slam_dunks = stat[:slam_dunks]
    end
  end
  biggest_shoe_slam_dunks
end

########## HELPER METHODS #########

def biggest_shoe_size(team_name)
  shoe_array = []
  game_hash[team_name][:players].each do |stat, info|
    shoe_array << stat[:shoe]
  end
  biggest_shoe = shoe_array.sort.last
  biggest_shoe
end










