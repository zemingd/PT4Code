#!/usr/bin/ruby
# encoding: utf-8

# ABC 111 C

n = gets.chomp.to_i
v = gets.split.map(&:to_i)

# vの要素がすべて同じ数字の時
if v.uniq.size == 1 then
  puts n/2
  exit
end 

# vの要素がすべて同じ数字ではないとき
modv = Array.new(n, -1)
ans = Array.new

k = 0
while k < n/2 do
  i = 0 
  while i < n/2 do
      modv[2*i] = v[2*k]
      modv[2*i+1] = v[2*k+1]
      i += 1
  end

  cnt = 0
  (0..n-1).each do |a|
    cnt += 1 if modv[a] != v[a]
  end
  ans.push(cnt)
  k += 1
end

p ans.min
#p modv
