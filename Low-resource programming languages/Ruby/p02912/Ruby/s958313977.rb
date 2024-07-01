input = gets.chomp.split(" ").map(&:to_i)
prices = gets.chomp.split(" ").map(&:to_i).sort

input[1].times do
  prices[-1] = prices[-1]/2
  prices.sort
end

sum = 0

prices.each do |e|
  sum += e
end

puts sum