n = gets.to_i

n.times do
  x = gets.to_i
  y = gets.to_i
  if x > 10**80 or y > 10**80
    puts "overflow "
  elsif x + y > 10**80
    puts x + y
  else
    puts "overflow"
  end
end