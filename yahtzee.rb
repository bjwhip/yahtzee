
require "pry"

require 'terminal-table'

# Table that holds users score/points 
scoresTable = Terminal::Table.new :title => 'Scores', :headings => ['Category', 'Points'] do |t|
  t << ['One', add_score(arr1, "Ones")]
  t << :separator
  t.add_row ['Two', add_score(arr1, "twos")]
  t.add_separator
  t.add_row ['Three', add_score(arr1, "threes")]
  t.add_separator
  t.add_row ['Four', add_score(arr1, "fours")]
  t.add_separator
  t.add_row ['Five', add_score(arr1, "fives")]
  t.add_separator
  t.add_row ['Six', add_score(arr1, "sixes")]
  t.add_separator
  t.add_row ['Sum', 0]
  t.add_separator
  t.add_row ['Bonus', 0]
  t.add_separator
  t.add_row ['Three of a Kind', 0]
  t.add_separator
  t.add_row ['Four of a Kind', 0]
  t.add_separator
  t.add_row ['Full House', 0]
  t.add_separator
  t.add_row ['Small Straight', 0]
  t.add_separator
  t.add_row ['Large Straight', 0]
  t.add_separator
  t.add_row ['Chance', 0]
  t.add_separator
  t.add_row ['YAHTZEE', 0]
  t.add_separator
  t.add_row ['TOTAL SCORE', 0]
end

  @picked = []
def chosen
  puts "Select Available Category"
  category = gets.chomp!.downcase
  @picked << category 
end
chosen
# Table displayed to user that gives them option to select a category 
pickableTable = Terminal::Table.new :title => 'Choices', :headings => ['Available', 'Points']  do |t|
  
  t << ['One', 0] unless @picked.include? 'one'
  t << :separator unless @picked.include? 'one'
  t.add_row ['Two', 0] unless @picked.include? 'two'
  t.add_separator unless @picked.include? 'two'
  t.add_row ['Three', 0] unless @picked.include? 'three'
  t.add_separator unless @picked.include? 'three'
  t.add_row ['Four', 0] unless @picked.include? 'four'
  t.add_separator unless @picked.include? 'four'
  t.add_row ['Five', 0] unless @picked.include? 'five'
  t.add_separator unless @picked.include? 'five'
  t.add_row ['Six', 0] unless @picked.include? 'six'
  t.add_separator unless @picked.include? 'six'
  t.add_row ['Sum', 0] 
  t.add_separator
  t.add_row ['Bonus', 0]
  t.add_separator
  t.add_row ['Three of a Kind', 0]
  t.add_separator
  t.add_row ['Four of a Kind', 0]
  t.add_separator
  t.add_row ['Full House', 0]
  t.add_separator
  t.add_row ['Small Straight', 0]
  t.add_separator
  t.add_row ['Large Straight', 0]
  t.add_separator
  t.add_row ['Chance', 0]
  t.add_separator
  t.add_row ['YAHTZEE', 0]
  t.add_separator
  t.add_row ['TOTAL SCORE', 0]
end

puts pickableTable

 