n = gets.chomp.to_i

n.times do
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  result = a + b

  if Math.log10(a + b) + 1 > 80
    puts "overflow"
  else
    puts result
  end
end