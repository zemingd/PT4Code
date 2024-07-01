sum = 0
sub = 0

5.times do
  input = gets.chomp.to_i
  sum += ((input + 9) / 10) * 10
  sub = (10 - input) % 10 if sub < (10 - input) % 10
end

puts(sum - sub)