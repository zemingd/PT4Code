n=gets.to_i
c = 0
3.upto(n.to_s.size-1) do |i|
  c += 3 ** i - 2 ** i * 3 + 3
end
[3,5,7].repeated_permutation(n.to_s.size) do |b|
  if b.join.to_i <= n && b.count(3)*b.count(5)*b.count(7)>0
    c += 1
  elsif b.join.to_i > n
    break
  end
end
p c