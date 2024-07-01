a = gets.to_i
sum = 0

a.times do |i|
  i == a ? sum += 0 : sum += i
end

puts sum