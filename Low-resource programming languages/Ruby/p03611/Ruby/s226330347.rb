 N = gets.to_i
ary = []
for i in 0..n-1 do
  i = i
  ary.push(gets.to_i)
end
ans = 1
ary.each do |x|
  ans = ans.lcm(x)
end
puts ans