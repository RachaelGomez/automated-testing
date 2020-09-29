
# card.rb

class Card
  attr_reader :value, :suit
  VALID_SUITS = %i[diamonds clubs spades hearts]
  def initialize(value, suit)
    @value = value
    @suit = suit

    unless VALID_SUITS.include?(suit)
      raise ArgumentError.new("Invalid Suit")
    end


    if value < 1 || value > 13
      raise ArgumentError.new("Invalid suit")
    end
  end



  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
