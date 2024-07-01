a, b, c = gets.chop.split(" ").map(&:to_s)
ary = [a, b, c]
ans = []

ary.each do |i|
	ans << i.split(//)
end

if ans[0].last == ans[1].first && ans[1].last == ans[2].first
  puts "YES"
else
  puts "NO"
end