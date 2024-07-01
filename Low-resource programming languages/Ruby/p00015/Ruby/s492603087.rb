n = gets.to_i
n.times do
  sum = gets.to_i + gets.to_i
  puts (sum >= 10**80) ? 'overflow' : sum
end