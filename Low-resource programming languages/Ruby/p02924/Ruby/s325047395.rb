n = gets.to_i

sum = 0;
(n - 1).times { |i| sum += (i + 1) }

res = sum
n.times do |i|
  r = n % (i + 1)
  next if r == 0 || r < (i + 1)
  if res < sum - (i + 1) + r
    res = sum - (i + 1) + r 
  end
end

puts res