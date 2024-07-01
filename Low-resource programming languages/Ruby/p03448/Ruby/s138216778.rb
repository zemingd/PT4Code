#!/usr/bin/env ruby
DEBUG = false
def money(index)
  [500, 100, 50][index]
end
def how_many_exact(coins, price, index)
  puts "how_many_exact #{coins}, price: #{price}, index: #{index}" if DEBUG
  results = 0
  for i in 0..coins[index] do
    selected_money = money(index) * i
    puts "  index: #{index}, i: #{i}, selected_money: #{selected_money}" if DEBUG
    next if selected_money > price
    if index == coins.length() - 1 
      puts "  HIT!" if selected_money == price if DEBUG
      results += 1 if selected_money == price
    else
      results += how_many_exact(coins, price - selected_money, index + 1)
    end
  end
  results
end
def update_coins(coins, index)
  updated_coins = coins.dup()
  updated_coins[index] = 0
  updated_coins
end

read_i = lambda { STDIN.readline().to_i() }
a, b, c = read_i[], read_i[], read_i[]
price = read_i[]
puts how_many_exact([a, b, c], price, 0)