n = gets.to_i
s = n.times.map{gets.to_i}.sort
sum = s.inject(:+)
s.each do |i|
  if sum % 10 == 0
    sum -= i if i % 10 != 0
  else
    break
  end
end
sum = 0 if sum % 10 == 0

puts sum