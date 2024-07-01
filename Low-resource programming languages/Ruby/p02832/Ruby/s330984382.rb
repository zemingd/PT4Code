# coding: utf-8
N = gets.to_i
a = gets.split.map {|e| e.to_i}
# 砕くレンガの個数
ans = 0
# 今探している数
sn = 1
cnt = 0

a.each do |n|
  if n == sn
    ans += cnt
    cnt = 0
    sn += 1
  else
    cnt += 1
  end
end

if cnt == a.size
  puts -1
else
  puts ans
end

