n = gets.chomp.to_i

n.times do
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  result = a + b

  if result.to_s.length > 80
    puts "overflow"
  else
    puts result
  end
end