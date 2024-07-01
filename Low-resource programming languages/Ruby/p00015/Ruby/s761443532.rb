gets.chomp.to_i.times do
  a = gets.chomp.to_i; b = gets.chomp.to_i
  sum = a + b
  if sum.to_s.length > 80
    puts "overflow"
  else puts sum
  end
end