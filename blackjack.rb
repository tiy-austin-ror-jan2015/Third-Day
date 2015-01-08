# Blackjack
puts "Let's play Blackjack!"

puts "-" * 20

class Blackjack
  def initialize
    @player = player.new
    @dealer = dealer.new
  end

class Gambler
  attr_accessor :cards, :bank
  def initialize
    @cards = Deck.new
    @bank = 100
  end
end

class Deck

  attr_accessor :cards
  def initialize
    @cards = ((1..11).to_a * 4).shuffle
  end

  def count
    @cards.count
  end

  def shuffle
    @cards.shuffle
  end

  def draw
    @cards.shift
  end
end
end


# Player draws 2 cards and dealer draws 2 cards
# Each round will cost player $100
  def play
    while @player.cards.count > 0 do
      first_card = @player.cards.draw
      second_card = @player.cards.draw
      round = @bank - 10
      puts "Your cards are #{first_card} and #{second_card}."

      third_card = @dealer.cards.draw
      fourth_card = @dealer.cards.draw
      puts "Dealer's hand is #{third_card} and #{fourth_card}."
      if first_card + second_card == 21
        puts "Outstanding! You win!"
      elsif third_card + fourth_card == 21
        puts "Dealer wins. You lose."
      elsif first_card + second_card > 21
        puts "You lost kid."
      elsif third_card + fourth_card > 21
        puts "House loses."


    end
  end
end





