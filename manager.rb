require "uri"
require "net/http"
require "json"
require_relative "coin"

class Manager
  def initialize
    @repo = {}
    initialize_repo
  end

  def initialize_repo
    response = web_scrap
    json = JSON.parse(response)
    json.each do |symbol, values|
      coin = Coin.new(symbol, values['USD'], values['EUR'])
      @repo[symbol] = coin
    end
  rescue StandardError => e
    puts "Failed to load coin data: #{e.message}"
    exit
  end

  def web_scrap
    url = "https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,XRP,DASH,LTC&tsyms=USD,EUR"
    url = URI(url)
    Net::HTTP.get(url)
  end

  def coin_list
    @repo.keys
  end

  def calculate(amount, symbol, to)
    coin = @repo[symbol]
    unless coin.respond_to?(to.to_sym)
      puts "#{to} is not a supported currency".center(50, "*")
      return nil
    end
    amount * coin.send(to.to_sym)
  end
end
