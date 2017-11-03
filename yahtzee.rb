
require "pry"

require 'terminal-table'

arr1 = [1,2,4,2,3]
arr2 = [2,2,2,6,1]  
arr3 = [3,3,3,5,1]  
arr4 = [4,4,1,3,1]  
arr5 = [5,5,1,1,1]  
arr6 = [1,6,6,1,1]

@sum = 0


# Table that holds users score/points 
scoresTable = Terminal::Table.new :title => 'Scores', :headings => ['Category', 'Points'] do |t|
  t << ['One', add_score(arr1, "Ones")]
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

  def add_score dice_arr, category
    cased_category = category.downcase
    dice_str = dice_arr.map(&:to_s).join("")
    score = 0
    case cased_category

    when  "ones"
     if dice_arr.include?(1)
      score = dice_arr.keep_if{|x| x == 1}.sum
      @sum += score
      score
    else
      @sum += 0
      0
    end 
  when  "twos"
    if dice_arr.include?(2)
      score = dice_arr.keep_if{|x| x == 2}.sum
      @sum += score
      score
    else
      @sum += 0
      0
    end 
  when  "threes"
    if dice_arr.include?(3)
      score = dice_arr.keep_if{|x| x == 3}.sum
      @sum += score
      score
    else
      @sum += 0
      0
    end 
  when  "fours"
    if dice_arr.include?(4)
      score = dice_arr.keep_if{|x| x == 4}.sum
      @sum += score
      score
    else
      @sum += 0
      0
    end 
  when  "fives"
    if dice_arr.include?(5)
      score = dice_arr.keep_if{|x| x == 5}.sum
      @sum += score
      score
    else
      @sum += 0
      0
    end 
  when  "sixes"
    if dice_arr.include?(6)
      score = dice_arr.keep_if{|x| x == 6}.sum
      @sum += score
      score
    else
     @sum += 0
     0
   end
 else

  puts "It didnt work"  
end  
end

end

  












 