N = gets.to_i
a = gets.split.map(&:to_i)

sum = 0
a.each do |i|
  sum += i-1
end

puts sum