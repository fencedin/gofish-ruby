require 'rspec'
require 'game'
require 'deck'
require 'player'

describe 'Game' do
  describe 'initialize' do
    it 'initializes the game with a deck and 2 players' do
      test_game = Game.new
      test_game.should be_an_instance_of Game
    end
  end
  describe '.create' do
    it 'creates new instance of game' do
      test_game = Game.create
      test_game.should be_an_instance_of Game
    end
  end
  describe 'new_deck' do
    it 'creates new deck in game' do
      test_game = Game.create
      test_game.deck.full_deck[0].should eq "A"
    end
  end
  describe 'new_players' do
    it 'creates new players in game' do
      test_game = Game.create
      test_game.players.p1hand.should eq []
    end
  end
  describe 'deal_hand' do
    it 'will assign 7 random cards from the deck to each player' do
      test_game = Game.create
      test_game.deal_hand
      test_game.players.p1hand.should eq ["A", "2", "4", "6", "8", "10", "Q"]
    end
  end
end


describe 'Player' do
  describe 'initialize' do
    it 'initializes the player' do
      test_player = Player.new
      test_player.should be_an_instance_of Player
    end
  end
  describe '.create' do
    it 'creates new instance of player' do
      test_player = Player.create
      test_player.should be_an_instance_of Player
    end
  end
  describe 'get_pair' do
    it 'grabs a players pair and moves it to their pairs array' do
      test_player = Player.create
      test_player.p1hand = ["1", "1", "2", "3", "4", "5", "6"]
      test_player.p1pairs.should eq ["1", "1"]
    end
  end
end


describe 'Deck' do
  describe 'initialize' do
    it 'initializes the deck' do
      test_deck = Deck.new
      test_deck.should be_an_instance_of Deck
    end
  end
  describe '.create' do
    it 'creates new instance of deck' do
      test_deck = Deck.create
      test_deck.should be_an_instance_of Deck
    end
  end
  describe 'full_deck' do
    it 'returns the full deck of 52 cards' do
      test_deck = Deck.create
      test_deck.full_deck[0].should eq "A"
    end
  end
end
