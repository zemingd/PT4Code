n,m,k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

a_sum = [a.first]

1.upto(n-1) do |i|
  a_sum[i] = a_sum[i-1]+a[i]
end

b_sum = [b.first]

1.upto(m-1) do |i|
  b_sum[i] = b_sum[i-1]+b[i]
end

ans = 0
0.upto(n-1) do |i|
  sum = a_sum[i]
  next if sum > k

  nokori = k-sum

  b_max = b_sum.bsearch_index{|x| x > nokori} || m

  ans = [ans, i+1 + b_max].max
end
p ans
