class Player
  attr_reader :p1hand, :p2hand, :p1pairs, :p2pairs

  def initialize
    @p1hand = []
    @p2hand = []
    @p1pairs = []
    @p2pairs = []
  end

  def Player.create
    test_player = Player.new
    test_player
  end

  def get_pair
    cards = @p1hand
    @ p1pairs << cards
  end

end
