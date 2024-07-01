a, b  = gets.split.map(&:to_i)
pay = 0

if a >= 13
  pay = b
elsif a <= 5
  pay = 0
else
  pay = b / 2
end

puts pay