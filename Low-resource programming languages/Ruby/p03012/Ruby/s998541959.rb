N = gets.chomp.to_i
ary = []

while line
  line = gets.chomp.to_i
  ary << line
end

ans = []
tmp = 1
(N-1).times do
  tmp1 = ary.slice(0..tmp).sum
  tmp2 = ary.slice(tmp..N-1).sum
  ans[tmp] = (tmp1-tmp2).abs
  tmp+=1
end

puts ans.min