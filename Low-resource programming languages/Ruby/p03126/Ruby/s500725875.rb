n,m=gets.split.map(&:to_i)
ans = *(1..m)

n.times do
  k,*a=gets.split.map(&:to_i)
  ans &= a
end

p ans.size