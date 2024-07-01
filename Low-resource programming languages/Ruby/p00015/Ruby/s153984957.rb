n = gets.chomp.to_i

n.times do
  sum = gets.chomp.to_i + gets.chomp.to_i
  if sum >= 10**80
    puts "overflow"
  else
    puts sum
  end
end