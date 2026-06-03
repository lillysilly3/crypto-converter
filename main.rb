require "./manager"

def submenu(manager, to)
  coin_list = manager.coin_list
  puts "Available Coins"
  puts coin_list.join(", ").center(50, "-")
  print "Coin: "
  coin = gets.chomp.upcase
  print "Amount: "
  amount = gets.chomp.to_f

  if coin_list.include?(coin)
    result = manager.calculate(amount, coin, to)
    puts "-".center(50, "-")
    puts "#{amount} #{coin} = #{result} #{to}".center(50, "-")
    puts "-".center(50, "-")
  else
    puts "#{coin} is not available".center(50, "*")
  end
end

def menu
  manager = Manager.new
  loop do
    puts "Cryptocurrency Converter".center(50, "#")
    puts "a) Convert to USD"
    puts "b) Convert to EUR"
    puts "q) Quit"
    print "Action: "
    choice = gets.chomp

    case choice
    when "a" then submenu(manager, "USD")
    when "b" then submenu(manager, "EUR")
    when "q" then break
    end
  end
end


menu()
