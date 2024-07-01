n = gets
h = gets.chomp!.split.map{|x| x.to_i}
cur, pre, cnt = 0, 0, 0
while cur=h.shift && cur > pre
  cnt += 1
  pre = cur
end
puts cnt