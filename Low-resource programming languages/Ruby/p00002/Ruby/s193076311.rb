while true
  a,b = gets.split.map(&:to_i)
sum = a + b
j = 0
  while sum > 0
    sum = sum / 10
    j += 1
  end
  puts "#{j}"
end