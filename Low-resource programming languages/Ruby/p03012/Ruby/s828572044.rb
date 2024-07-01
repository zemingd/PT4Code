n = gets.chomp.to_i
w = gets.chomp.split.map(&:to_i)
ans = 10000000000000
(n-1).times do |i|
  v = (w[0..i].inject(:+) - w[i+1..n-1].inject(:+)).abs
  ans = v if v < ans
end
puts ans
