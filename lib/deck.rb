class Deck
  @@deck = %w(A 1 2 3 4 5 6 7 8 9 10 J Q K
              A 1 2 3 4 5 6 7 8 9 10 J Q K
              A 1 2 3 4 5 6 7 8 9 10 J Q K
              A 1 2 3 4 5 6 7 8 9 10 J Q K)

  def initialize

  end

  def Deck.create
    new_deck = Deck.new
    new_deck
  end

  def full_deck
    @@deck
  end

end
