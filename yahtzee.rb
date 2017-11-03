require 'terminal-table'

# Table that holds users score/points 
scoresTable = Terminal::Table.new :title => 'Scores', :headings => ['Category', 'Points'] do |t|
  t << ['One', 1]
  t << :separator
  t.add_row ['Two', 2]
  t.add_separator
  t.add_row ['Three', 3]
  t.add_separator
  t.add_row ['Four', 3]
  t.add_separator
  t.add_row ['Five', 3]
  t.add_separator
  t.add_row ['Six', 3]
  t.add_separator
  t.add_row ['Sum', 3]
  t.add_separator
  t.add_row ['Bonus', 3]
  t.add_separator
  t.add_row ['Three of a Kind', 3]
  t.add_separator
  t.add_row ['Four of a Kind', 3]
  t.add_separator
  t.add_row ['Full House', 3]
  t.add_separator
  t.add_row ['Small Straight', 3]
  t.add_separator
  t.add_row ['Large Straight', 3]
  t.add_separator
  t.add_row ['Chance', 3]
  t.add_separator
  t.add_row ['YAHTZEE', 3]
  t.add_separator
  t.add_row ['TOTAL SCORE', 3]
end

# Table displayed to user that gives them option to select a category 
pickableTable = Terminal::Table.new :title => 'Choices', :headings => ['Available', 'Points']  do |t|
  t << ['One', 1]
  t << :separator
  t.add_row ['Two', 2]
  t.add_separator
  t.add_row ['Three', 3]
  t.add_separator
  t.add_row ['Four', 3]
  t.add_separator
  t.add_row ['Five', 3]
  t.add_separator
  t.add_row ['Six', 3]
  t.add_separator
  t.add_row ['Sum', 3]
  t.add_separator
  t.add_row ['Bonus', 3]
  t.add_separator
  t.add_row ['Three of a Kind', 3]
  t.add_separator
  t.add_row ['Four of a Kind', 3]
  t.add_separator
  t.add_row ['Full House', 3]
  t.add_separator
  t.add_row ['Small Straight', 3]
  t.add_separator
  t.add_row ['Large Straight', 3]
  t.add_separator
  t.add_row ['Chance', 3]
  t.add_separator
  t.add_row ['YAHTZEE', 3]
  t.add_separator
  t.add_row ['TOTAL SCORE', 3]
end
puts scoresTable

puts "Select Available Category"
category = gets.chomp!


class ScoreCard
end

class Player
end  


class Game
  
  def roll
    
  end

  def player_turn
    
  end

  def add_score
    
  end
end  
