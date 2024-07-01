n = gets.to_i

count = 1
loop do
  break if (n * count).even?
  count += 1
end

puts n * count

