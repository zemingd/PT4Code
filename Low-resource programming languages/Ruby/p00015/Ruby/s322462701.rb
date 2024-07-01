gets.to_i.times do
  sum = gets.to_i + gets.to_i
  puts 10**80 <= sum ? 'overflow' : sum
end