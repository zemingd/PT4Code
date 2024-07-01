n,m,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

sum_a = Array.new(n+1, 0)
1.upto(n) do |i|
  sum_a[i] = a[i - 1] + sum_a[i - 1]
end

sum_b = Array.new(m+1, 0)
1.upto(m) do |i|
  sum_b[i] = b[i - 1] + sum_b[i - 1]
end

ans = 0
0.upto(n) do |i|
  remain = k - sum_a[i]
  next if remain < 0

  b_cnt = sum_b.bsearch_index { |x| x > remain }
  if b_cnt.nil?
    b_cnt = m
  else
    b_cnt -= 1
  end
  ans = [ans, i + b_cnt].max
end

puts ans
