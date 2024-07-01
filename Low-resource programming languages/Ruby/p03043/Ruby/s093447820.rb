N,K = gets.split.map &:to_i

k = K; x = 1.0; A = [k]; X = [x]
while k > 1
  k = (k+1)/2; x /= 2; A << k; X << x
end

q = 0
N.times do |n|
  i = A.index{|k|k <= n+1}
  q += X[i]
end
puts q / N