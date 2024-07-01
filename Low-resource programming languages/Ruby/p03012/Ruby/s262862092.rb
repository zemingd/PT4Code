n = gets.chomp.to_i
w = gets.chomp.split(' ').map(&:to_i)

ans = []
for t in 1..(n-1)
  ans << (w[0..(t-1)].inject(:+) - w[t..(n-1)].inject(:+)).abs
end
puts ans.min