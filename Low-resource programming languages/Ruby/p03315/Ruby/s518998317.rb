a = gets.strip.split('')
sum = 0
a.each do |x|
  sum += x == '+' ? 1 : -1
end
puts sum
