N, M = gets.chomp.split.map(&:to_i)
X = gets.chomp.split.map(&:to_i).sort

diffs = X.each_cons(2).map { |a, b| b - a }.sort

ans = 0

0.upto(diffs.size - N) do |i|
  ans += diffs[i]
end

puts ans
