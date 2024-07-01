n,k = gets.chomp.split.map(&:to_i)

ans = k;
(n-1).times{ans *= (k-1)}
puts ans
