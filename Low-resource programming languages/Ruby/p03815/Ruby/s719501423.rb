score = gets.chomp.to_i
step = score / 11 * 2

if score % 11 > 0 && score % 11 <= 6
  step += 1
end
if score % 11 >= 7
  step += 2
end

puts step