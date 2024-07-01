n = gets.to_i
ary = gets.strip.split.map(&:to_i)
ans = []
num = 0
n.times do
  ans << 0
end
ary.each do |i|
  ans[i-1] += 1
end
puts ans
