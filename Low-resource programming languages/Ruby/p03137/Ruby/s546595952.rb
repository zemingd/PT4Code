n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).sort

if n >= m
  puts 0
  exit
end

diff = []
1.upto(x.size - 1) do |i|
  diff << x[i] - x[i - 1]
end
diff.sort!

ans = 0
0.upto(diff.size - 1 - (n - 1)) { |i| ans += diff[i] }
puts ans

