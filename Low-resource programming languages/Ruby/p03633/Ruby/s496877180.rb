n = gets.chomp.to_i
t = []
n.times do
  t.push gets.chomp.to_i
end

ans = t.first
t.inject do |memo, item|
  ans = memo.lcm(item)
end

print "#{ans}"