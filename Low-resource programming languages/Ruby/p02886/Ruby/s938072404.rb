N = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)

sum = 0
d.combination(2).each do |n|
  sum += n.inject(:*)
end

puts sum