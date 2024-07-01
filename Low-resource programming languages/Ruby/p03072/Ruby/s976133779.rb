n = gets
h = gets.chomp!.split.map{|x| x.to_i}
cur, pre, cnt = 0, 0, 0
while cur=h.shift
  cnt += 1 if cur > pre
  pre = cur
end
puts cnt
