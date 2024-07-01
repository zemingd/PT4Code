N = gets.chomp.split(" ").map(&:to_i)
strs = gets.chomp.split(" ").map(&:to_i)

sum = 0
strs.each do |num|
  sum += num-1
end
puts sum
