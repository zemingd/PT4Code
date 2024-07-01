score = gets.chomp.to_i
step = score / 11 * 2

if (score % 11).between?(1..6)
  step += 1
else if score % 11 >= 7
  step += 2
end

puts step