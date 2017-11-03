require "pry"
class ScoreCard
end

class Player
end  


class Game
  
  def roll
    
  end

  def player_turn
    
  end

  def add_score dice_arr, player_choice
    cased_category = category.downcase
    dice_str = dice_arr.map(&:to_s).join("")
    score = 0
  case cased_category

    when  "ones"
       dice_arr.include?(1) ? score = dice_arr.keep_if{|x| x == 1}.sum : 0
    when  "twos"
       dice_arr.include?(2) ? score = dice_arr.keep_if{|x| x == 2}.sum : 0
    when  "threes"
      dice_arr.include?(3) ? score = dice_arr.keep_if{|x| x == 3}.sum : 0
    when  "fours"
      dice_arr.include?(4) ? score = dice_arr.keep_if{|x| x == 4}.sum : 0
    when  "fives"
      dice_arr.include?(5) ? score = dice_arr.keep_if{|x| x == 5}.sum : 0
    when  "sixes"
      dice_arr.include?(6) ? score = dice_arr.keep_if{|x| x == 6}.sum : 0
    else
      
      puts "It didnt work"  
    end  
  end
end

arr1 = [1,2,4,1,3]   
arr2 = [2,2,2,6,1]  
arr3 = [3,3,3,5,1]  
arr4 = [4,4,1,3,1]  
arr5 = [5,5,1,1,1]  
arr6 = [1,6,6,1,1]



def add_score dice_arr, category
  cased_category = category.downcase
  dice_str = dice_arr.map(&:to_s).join("")
  score = 0
  case cased_category

    when  "ones"
       dice_arr.include?(1) ? score = dice_arr.keep_if{|x| x == 1}.sum : 0
    when  "twos"
       dice_arr.include?(2) ? score = dice_arr.keep_if{|x| x == 2}.sum : 0
    when  "threes"
      dice_arr.include?(3) ? score = dice_arr.keep_if{|x| x == 3}.sum : 0
    when  "fours"
      dice_arr.include?(4) ? score = dice_arr.keep_if{|x| x == 4}.sum : 0
    when  "fives"
      dice_arr.include?(5) ? score = dice_arr.keep_if{|x| x == 5}.sum : 0
    when  "sixes"
      dice_arr.include?(6) ? score = dice_arr.keep_if{|x| x == 6}.sum : 0
    else
      
      puts "It didnt work"  
  end  
end



p add_score(arr1, "Ones")


