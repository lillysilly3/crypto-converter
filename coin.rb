class Coin
  attr_reader :symbol, :USD, :EUR

  def initialize(symbol, usd, eur)
    @symbol, @USD, @EUR = symbol, usd, eur
  end
end
