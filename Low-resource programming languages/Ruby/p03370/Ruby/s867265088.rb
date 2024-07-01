n, x = gets.chomp.split.map(&:to_i)
m = []
n.times do
  m << gets.chomp.to_i
end
ans = n

sum = m.inject{|i, j| i + j}
x -= sum
m.sort!
m.each do |k|
  break if x < k
  loop do
    if x >= k
      x -= k
      ans += 1
    else
      break
    end
  end
end

puts ans
