 N = gets.to_i
ary = []
for i in 0..n-1 do
  ary.push(gets.to_i)
end
ans = 1
ary.each do |i|
  ans = ans.lcm(x)
end
puts ans