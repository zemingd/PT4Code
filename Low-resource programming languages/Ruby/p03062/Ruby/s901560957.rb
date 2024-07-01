n = gets.to_i
a = gets.split.map(&:to_i).sort
ans = if n % 2 == 0
  0
else
  a.pop
end
ans += a.each_slice(2).map { |s| s.inject(:+).abs }.inject(:+)
puts ans