a, b = gets.chop.split.map(&:to_i)

sum = 0

2.times do |i|
  if a > b
    sum += a
    a -= 1
  else
    sum += b
    b -= 1
  end
end

puts sum
