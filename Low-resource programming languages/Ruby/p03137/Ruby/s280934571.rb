n,m = gets.split.map(&:to_i)
po = gets.split.map(&:to_i)
po.sort!
if m == 1
  puts 0
  exit
end
dis = Array.new(m-1, 0)
for i in 0..m-2
  dis[i] = po[i+1] - po[i]
end
dis.sort!
ans = 0
for i in 0..m-n-1
  ans += dis[i]
end
puts ans
