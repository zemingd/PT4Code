gets.chomp.to_i.times do
  a = gets.to_i
  b = gets.to_i

  if (sum = a + b) >= 10**80
    puts 'overflow'
  else
    puts sum
  end
end