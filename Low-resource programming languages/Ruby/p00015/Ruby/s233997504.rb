n = gets.chomp.to_i

n.times do
  answer = gets.chomp.to_i + gets.chomp.to_i
  puts (answer >= 10**80) ? :overflow : answer
end