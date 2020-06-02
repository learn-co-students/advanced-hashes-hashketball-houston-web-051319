require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end
def num_points_scored(player_x)

   game_hash.each do |home_away, attributes|

     attributes[:players].each do |player,stats|
       if player == player_x

         puts stats[:points]

       end
     end
   end
 end

def shoe_size (player_x)
  game_hash.each do |home_away, attributes|
    attributes[:players].each do |player,stats|
      if player == player_x
        puts stats[:shoe]
      end
    end
  end
end

def team_colors (name)
  game_hash.each do |home_away,attributes|
    if attributes[:team_name] == name
    puts attributes[:colors]
    end
  end
end
def team_names
  array =[]
game_hash.each do |home_away,attributes|
  array.push(attributes[:team_name])
end
puts array
end
def player_numbers (name)
  array =[]
  game_hash.each do |home_away, attributes|
    if attributes[:team_name] == name
      attributes[:players].each do |player, stats|
        array.push(stats[:number])
      end
    end
  end
  puts array
end
def player_stats (player_x)


  game_hash.each do |home_away, attributes|
    attributes[:players].each do | player, stats|
      if player == player_x
        puts stats

      end
    end
  end
end
def big_shoe_rebounds
name_of_player=nil
max_shoe = nil
number_of_rebounds = nil
game_hash.each do |home_away, attributes|
  attributes[:players].each do |player,stats|
    if max_shoe ==nil
      max_shoe = stats[:shoe]
      name_of_player = player
      number_of_rebounds = stats[:rebounds]
    elsif max_shoe< stats[:shoe]
      max_shoe = stats[:shoe]
      name_of_player = player
      number_of_rebounds = stats[:rebounds]
    end
  end
end
puts "#{name_of_player}  #{max_shoe}  #{number_of_rebounds}"
end
