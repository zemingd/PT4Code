n = gets.to_i

n.times do
  x = gets.chomp
  y = gets.chomp

  if (x + y).length > 80
    puts 'overflow'
  else
    puts x.to_i + y.to_i
  end
end