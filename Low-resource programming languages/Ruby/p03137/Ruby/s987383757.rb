n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
diff = x.sort.each_cons(2).map { |a, b|
  b - a
}.sort.reverse
ans = diff.count > 0 ? diff[(n-1)..-1] : []
if ans.count > 0
  puts ans.inject(&:+)
else
  puts 0
end