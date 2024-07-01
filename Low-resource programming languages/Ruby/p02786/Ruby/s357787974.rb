H = gets.to_i

h = (Math.log(H) / Math.log(2)).floor

puts 2 ** (h + 1) - 1
