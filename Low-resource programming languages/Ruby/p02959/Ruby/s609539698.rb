n = gets.to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
ans = 0
n.times.each do |i|
  c = [a[i], b[i]].min
  ans += c
  c = [a[i+1], b[i]-c].min
  ans += c
  a[i+1] -= c
end
p ans