n, k = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i).sort.reverse
if k != 0 && k <= n
  ans = ary.slice!(0, k)
  puts ans.inject(&:+)
elsif k > n
  puts 0
else
  puts ary.inject(&:+)
end
