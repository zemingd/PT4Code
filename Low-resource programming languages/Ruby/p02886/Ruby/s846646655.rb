n = gets.to_i
array = gets.split(" ").map(&:to_i)
new_array = array.combination(2).to_a
sum = 0
new_array.each do |a|
  sum += a.inject(:*)
end

puts sum