n = gets.to_i

n.times do
  x = gets.to_i
  y = gets.to_i

  if (x + y).to_s.length > 80
    puts 'overflow'
  else
    puts x + y
  end
end