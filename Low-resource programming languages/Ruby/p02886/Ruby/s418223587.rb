# coding: utf-8
#ABC143B_TAKOYAKI2019.rb
n = gets.to_i
d = gets.split.map(&:to_i)

idx1 = 0
comb = []
ans = 0
while idx1 < n-1
  idx2 = idx1 + 1
  while idx2 < n
    ans +=  d[idx1]*d[idx2]
    idx2 += 1
  end
  idx1 += 1
end
puts ans
