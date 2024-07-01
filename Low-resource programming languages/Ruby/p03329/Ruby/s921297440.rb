n = STDIN.gets.chomp.to_i
max_cnt = 100000
list = []
i = 1
while true do
  a = 9**i
  b = 6**i
  if a < max_cnt
    list.push(a)
  end
  if b < max_cnt
    list.push(b)
  end
  if a > max_cnt && b > max_cnt
    break
  end
  i += 1
end
list.push(1)
list.sort!{|x,y| y<=>x}
i = 0
cnt = 0
while i < list.size do
  if list[i] <= n
    n -= list[i]
    cnt += 1
    next
  end
  i += 1
end
puts cnt
