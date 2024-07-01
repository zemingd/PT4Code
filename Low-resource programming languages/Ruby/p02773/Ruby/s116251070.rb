n = gets.to_i
cnt = Hash.new(0)
n.times do |i|
  s = gets.chomp
  cnt[s] += 1
end
m = cnt.values.max
ans = []
cnt.each do |k, v|
  ans << k if v == m
end
# p cnt
ans.sort!
puts ans
