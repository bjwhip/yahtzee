require "pry"

require 'terminal-table'

# arr1 = [1,2,4,2,3]
# arr2 = [2,2,2,6,1]  
# arr3 = [3,3,3,5,1]  
# arr4 = [4,4,1,3,1]  
# arr5 = [5,5,1,1,1]  
# arr6 = [1,6,6,1,1]

# @sum = 0

class ScoreCard

  def initialize
    @picked ||= []
  end

  # def player_card
  #   @scoresTable = Terminal::Table.new :title => 'Scores', :headings => ['Category', 'Points'] do |t|
  #     t << ['One', add_score(arr1, "Ones")]
  #     t << :separator
  #     t.add_row ['Two', add_score(arr1, "twos")]
  #     t.add_separator
  #     t.add_row ['Three', add_score(arr1, "threes")]
  #     t.add_separator
  #     t.add_row ['Four', add_score(arr1, "fours")]
  #     t.add_separator
  #     t.add_row ['Five', add_score(arr1, "fives")]
  #     t.add_separator
  #     t.add_row ['Six', add_score(arr1, "sixes")]
  #     t.add_separator
  #     t.add_row ['Sum', 0]
  #     t.add_separator
  #     t.add_row ['Bonus', 0]
  #     t.add_separator
  #     t.add_row ['Three of a Kind', 0]
  #     t.add_separator
  #     t.add_row ['Four of a Kind', 0]
  #     t.add_separator
  #     t.add_row ['Full House', 0]
  #     t.add_separator
  #     t.add_row ['Small Straight', 0]
  #     t.add_separator
  #     t.add_row ['Large Straight', 0]
  #     t.add_separator
  #     t.add_row ['Chance', 0]
  #     t.add_separator
  #     t.add_row ['YAHTZEE', 0]
  #     t.add_separator
  #     t.add_row ['TOTAL SCORE', 0]
  #   end
  # end 

  def chosen
    puts "Select Available Category"
    category = gets.chomp!.downcase
    @picked << category 
  end

  def display_table
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
      t.add_row ['Three of a Kind', 0] unless @picked.include? 'three of a kind'
      t.add_separator unless @picked.include? 'three of a kind'
      t.add_row ['Four of a Kind', 0] unless @picked.include? 'four of a kind'
      t.add_separator unless @picked.include? 'four of a kind'
      t.add_row ['Full House', 0] unless @picked.include? 'full house'
      t.add_separator unless @picked.include? 'full house'
      t.add_row ['Small Straight', 0] unless @picked.include? 'small straight'
      t.add_separator unless @picked.include? 'small straight'
      t.add_row ['Large Straight', 0] unless @picked.include? 'large straight'
      t.add_separator unless @picked.include? 'large straight'
      t.add_row ['Chance', 0] unless @picked.include? 'chance'
      t.add_separator unless @picked.include? 'chance'
      t.add_row ['YAHTZEE', 0] unless @picked.include? 'yahtzee'
    end 
    puts pickableTable
  end
end

myScoreCard = ScoreCard.new
myScoreCard.display_table
myScoreCard.chosen
myScoreCard.display_table

# class Player
# end  


# class Game

  

#   def roll

#   end


#     def roll
    
#         @die = (1..6).to_a
#         @dicecup = []
#         @die.sample
#         until @dicecup.count == 5 
#         @dicecup << @die.sample
#     end

#     @dicecup

#     def select
#         @dicecupe
#         binding.pry
#         # what ever one(s) they pick roll the rest
#         @dicecup.select {@dicecup} || @dicecup.count == 5
#         binding.pry
#     end
#     @dicecup




    
# end

  
  
#   def player_turn

#   end

#   def add_score dice_arr, category
#     cased_category = category.downcase
#     dice_str = dice_arr.map(&:to_s).join("")
#     score = 0
#     case cased_category

#     when  "ones"
#      if dice_arr.include?(1)
#       score = dice_arr.keep_if{|x| x == 1}.sum
#       @sum += score
#       score
#     else
#       @sum += 0
#       0
#     end 
#   when  "twos"
#     if dice_arr.include?(2)
#       score = dice_arr.keep_if{|x| x == 2}.sum
#       @sum += score
#       score
#     else
#       @sum += 0
#       0
#     end 
#   when  "threes"
#     if dice_arr.include?(3)
#       score = dice_arr.keep_if{|x| x == 3}.sum
#       @sum += score
#       score
#     else
#       @sum += 0
#       0
#     end 
#   when  "fours"
#     if dice_arr.include?(4)
#       score = dice_arr.keep_if{|x| x == 4}.sum
#       @sum += score
#       score
#     else
#       @sum += 0
#       0
#     end 
#   when  "fives"
#     if dice_arr.include?(5)
#       score = dice_arr.keep_if{|x| x == 5}.sum
#       @sum += score
#       score
#     else
#       @sum += 0
#       0
#     end 
#   when  "sixes"
#     if dice_arr.include?(6)
#       score = dice_arr.keep_if{|x| x == 6}.sum
#       @sum += score
#       score
#     else
#      @sum += 0
#      0
#    end
#  else


#   puts "It didnt work"  
# end  

# end  
# my_game = Game.new
# p my_game.roll
# p "Type the dies you want to keep"



# end

# end
