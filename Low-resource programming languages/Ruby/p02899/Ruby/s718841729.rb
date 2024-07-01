n = gets.to_i
ary = gets.split.map(&:to_i)

n.times do |i|
  ary[i] = [ary[i], i]
end

ary = ary.sort_by{|a| a[0]}
ans = []
ary.each do |a|
  ans << a[1] + 1
end

puts ans.join(" ")