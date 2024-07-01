n, x = gets.chomp.split(' ').map(&:to_i)
cities = gets.chomp.split(' ').map{|m| m.to_i - x}

puts cities.inject(:gcd)
