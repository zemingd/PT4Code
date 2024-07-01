N = gets.to_i
X = gets.split.map(&:to_i)
m0,m1 = X.sort.values_at(N/2 - 1, N/2)
puts X.map{|v| v > m0 ? m0 : m1 }