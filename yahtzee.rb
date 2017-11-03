require "pry"

require 'terminal-table'
 
class Game

    def roll     
        @saved_values ||= []
        @die = (1..6).to_a
        @dicecup = []

        

        if @saved_values.count > 1
            @saved_values.each {|x| @dicecup << x }
            until @dicecup.count == 5 
                @dicecup << @die.sample
            end
        elsif @saved_values.empty? 
            5.times do |dice|
                @dicecup << @die.sample
            end
            @saved_values = []
        end


        

        p "Here is your roll. Type the dies you want to keep"
        p @dicecup
            input = gets.chomp
            
        input_array = input.split
   
        split_array = input_array.keep_if { |v| v =~ /[1-6]/ }.map(&:to_i)

        split_array.each do |x|
            if @dicecup.include?(x)
              @saved_values << x
            else
              puts "Please enter dice that are in your cup. No cheating please :) "
              roll
            end
  
        end
        
    end

  
  
  def player_turn
    roll
    puts "Did you want to roll again? y/n"
    answer = gets.chomp!.downcase
    answer == "y" || answer == "yes" ? roll : answer
    puts "Did you want your last roll y/n"
    answer = gets.chomp!.downcase
    answer == "y" || answer == "yes" ? roll : answer
    display_table
    player_card(@dicecup, @category)
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
  when "chance"
   dice_arr.sum           
  else
    puts "It didnt work"
    0  
  end  

  end

  
   
  def show_sum
    @sum
  end

  def player_card dicecup, category

    @scoresTable = Terminal::Table.new :title => 'Scores', :headings => ['Category', 'Points'] do |t|
      t.add_row ['One', (category == "one" ? add_score(dicecup, "ones") : 0) ]
      t.add_separator
      t.add_row ['Two', (category == "two" ? add_score(dicecup, "twos") : 0)]
      t.add_separator
      t.add_row ['Three', (category == "three" ? add_score(dicecup, "threes") : 0)]
      t.add_separator
      t.add_row ['Four', (category == "four" ? add_score(dicecup, "fours") : 0)]
      t.add_separator
      t.add_row ['Five', (category == "five" ? add_score(dicecup, "fives") : 0)]
      t.add_separator
      t.add_row ['Six', (category == "six" ? add_score(dicecup, "sixes") : 0)]
      t.add_separator
      t.add_row ['Sum', show_sum]
      t.add_separator
      t.add_row ['Bonus', (show_sum > 63 ? show_sum += 35 : show_sum)]
      t.add_separator
      t.add_row ['Three of a Kind', (category == "three of a kind" ? add_score(dicecup, "3 of a kind") : 0)]
      t.add_separator
      t.add_row ['Four of a Kind', (category == "four of a kind" ? add_score(dicecup, "4 of a kind") : 0)]
      t.add_separator
      t.add_row ['Full House', (category == "full house" ? add_score(dicecup, "full house") : 0)]
      t.add_separator
      t.add_row ['Small Straight', (category == "small straight" ? add_score(dicecup, "small straight") : 0)]
      t.add_separator
      t.add_row ['Large Straight', (category == "large straight" ? add_score(dicecup, "large straight") : 0)]
      t.add_separator
      t.add_row ['Chance', (category == "chance" ? add_score(dicecup, "chance") : 0)]
      t.add_separator
      t.add_row ['YAHTZEE', (category == "yahtzee" ? add_score(dicecup, "yahtzee") : 0)]
      t.add_separator
      t.add_row ['TOTAL SCORE', 0]
    end
    puts @scoresTable
  end 

  

  def display_table
    @picked ||= []
    
    pickableTable = Terminal::Table.new :title => 'Choices', :headings => ['Available', 'Points']  do |t|
      t.add_row ['One', 0] unless @picked.include? 'one'
      t.add_separator unless @picked.include? 'one'
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
    puts "Select Available Category"
    @category = gets.chomp!.downcase
    @picked << @category
  end
end 






# p my_game.show_sum





 
    


  



# myScoreCard = ScoreCard.new
# myScoreCard.display_table
# myScoreCard.chosen
# myScoreCard.display_table
my_game = Game.new
my_game.player_turn
my_game.player_turn
# p dice_arr
# p my_game.add_score(dice_arr, "yahtzee")


