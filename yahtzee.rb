require "pry"
class ScoreCard
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

    def select
        @dicecupe
        binding.pry
        # what ever one(s) they pick roll the rest
        @dicecup.select {@dicecup} || @dicecup.count == 5
        binding.pry

    end
    @dicecup



    
end

  
  
  def player_turn
    
  end

  def add_score
    
  end
end  
my_game = Game.new
p my_game.roll
p "Type the dies you want to keep"