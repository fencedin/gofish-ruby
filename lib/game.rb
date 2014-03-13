class Game
  attr_accessor :deck, :players


  def initialize

  end

  def Game.create
    test_game = Game.new
    test_game.new_deck
    test_game.new_players
    test_game
  end

  def new_deck
    @deck = Deck.create
    @deck
  end

  def new_players
    @players = Player.create
    @players
  end

  def deal_hand
    7.times do
      @deck.full_deck
      card = @deck.full_deck[0]
      @deck.full_deck.delete_at(@deck.full_deck.index(card))
      @players.p1hand << card
      card = @deck.full_deck[0]
      @deck.full_deck.delete_at(@deck.full_deck.index(card))
      @players.p2hand << card
    end
  end


end
