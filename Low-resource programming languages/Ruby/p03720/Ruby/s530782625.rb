n, m = gets.strip.split.map(&:to_i)
ary = []
m.times do
  ary << gets.split.map(&:to_i)
end
ans = []
ary.each do |ele|
  ans << ele[0]
  ans << ele[1]
end

n.times do |i|
  puts ans.count(i + 1)
end