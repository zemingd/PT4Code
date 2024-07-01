n = gets.chomp.to_i
s = []
n.times do |i|
  s << gets.chomp.split("").sort
end
cnt = 0
while s != []
  ss = s.shift
  k = s.count(ss)
  cnt += k * (k+1) / 2
  s.delete(ss)
end
puts cnt
