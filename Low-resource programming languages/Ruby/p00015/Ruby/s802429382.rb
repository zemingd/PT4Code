n = gets.to_i
n.times do
  n1 = gets.to_i
  n2 = gets.to_i
  sum = n1 + n2
  if sum.to_s.size > 80
    puts "overflow"
  else
    puts sum
  end
end