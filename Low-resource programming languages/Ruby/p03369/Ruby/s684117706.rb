orders = gets.strip.chars.select { |order| order == 'o' }
puts 700 + orders.length * 100 