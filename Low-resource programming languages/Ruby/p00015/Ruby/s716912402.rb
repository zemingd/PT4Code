n = gets.to_i
n.times do
  a = gets.to_i
  b = gets.to_i
  puts "overflow" if a > 1.0e80
  puts "overflow" if b > 1.0e80
  if a + b > 1.0e80
    puts "overflow"
  else
    puts a + b
  end
end