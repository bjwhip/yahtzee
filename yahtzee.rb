

require "pry"

require 'terminal-table'

arr1 = [1,2,4,2,3]
arr2 = [2,2,2,6,1]  
arr3 = [3,3,3,5,1]  
arr4 = [4,4,1,3,1]  
arr5 = [5,5,1,1,1]  
arr6 = [1,6,6,1,1]

# Table that holds users score/points 
class ScoreCard
  @scoresTable = Terminal::Table.new :title => 'Scores', :headings => ['Category', 'Points'] do |t|
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
  @pickableTable = Terminal::Table.new :title => 'Choices', :headings => ['Available', 'Points']  do |t|
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
# puts scoresTable

# puts "Select Available Category"
# category = gets.chomp!
end

class Player
end  


class Game
  

  


    def roll
    
        @die = (1..6).to_a
        @dicecup = []
        @die.sample
        until @dicecup.count == 5 
          @dicecup << @die.sample
      end
      @dicecup
    end

    

    def select
        @dicecupe
        binding.pry
        # what ever one(s) they pick roll the rest
        @dicecup.select {@dicecup} || @dicecup.count == 5
        binding.pry

    end
  
  
  def player_turn

  end

  def add_score dice_arr, category
    @sum ||= 0
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
  when "3 of a kind"
    dice_arr.sort!
    # p dice_arr
    first_slice = dice_arr.take(3)
    second_slice = dice_arr.slice(2,3)
    
    if first_slice.uniq.count == 1
      first_slice.sum
    elsif second_slice.uniq.count == 1
      second_slice.sum
    else
      0  
    end
  when "4 of a kind"
    dice_arr.sort!
    # p dice_arr
    first_slice = dice_arr.take(4)
    second_slice = dice_arr.slice(1,4)
    
    if first_slice.uniq.count == 1
      first_slice.sum
    elsif second_slice.uniq.count == 1
      second_slice.sum
    else
      0  
    end
  when "full house"
    dice_arr.sort!
    # p dice_arr
    first_slice = dice_arr.take(3)
    second_slice = dice_arr.slice(3,2)
    third_slice = dice_arr.take(2)
    fourth_slice = dice_arr.slice(2,3) 
    if first_slice.uniq.count == 1 && second_slice.uniq.count == 1
      25
    elsif third_slice.uniq.count == 1 && fourth_slice.uniq.count == 1
      25
    else
      0  
    end
  when "small straight"
    dice_arr.sort!
    # p dice_arr
    first_slice = dice_arr.uniq.take(4)
     
    if first_slice == (1..4).to_a || first_slice == (2..5).to_a || first_slice == (3..6).to_a 
      30
    else
      0  
    end
  when "large straight"
    dice_arr.sort!
    # p dice_arr
    first_slice = dice_arr.uniq
     
    if first_slice == (1..5).to_a || first_slice == (2..6).to_a  
      40
    else
      0  
    end
  when "yahtzee"
    
    # p dice_arr
    first_slice = dice_arr.uniq
     
    if first_slice.count == 1   
      50
    else
      0  
    end            
  else
    puts "It didnt work"
    0  
  end  

  end

  
   
  def show_sum
    @sum
  end
end 
my_game = Game.new
dice_arr= my_game.roll
dice_arr= [2,2,2,2,2]
p dice_arr
p my_game.add_score(dice_arr, "yahtzee")
# p my_game.show_sum






  













