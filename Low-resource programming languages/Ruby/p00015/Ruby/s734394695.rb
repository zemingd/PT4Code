n = gets.to_i

n.times do
  a, b = gets, gets

  if a.length >= 80 || b.length >= 80 || (a + b).length >= 80
    puts 'overflow'
  else
    puts a.to_i + b.to_i
  end
end