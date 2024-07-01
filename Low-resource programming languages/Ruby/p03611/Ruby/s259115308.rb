n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
a.sort!

ans = 0
(10**5 + 5).times do |i|
  c = a.count{|e| [i-1, i, i+1].include?(e) }
  ans = c if c > ans
end
p ans
