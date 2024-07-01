n = gets.to_i
s = []
n.times do
  s << gets.to_i
end
sum = s.inject(:+)
if sum % 10 == 0
  sum -= s.min
  if sum % 10 == 0
    puts 0
  else
    puts sum
  end
else
  puts sum
end