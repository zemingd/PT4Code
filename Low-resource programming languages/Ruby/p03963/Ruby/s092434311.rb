n,k=gets.chomp.split.map(&:to_i)
ans = k
1.upto(n) do |i|
  break if n == i
  ans *= (k-1)
end

puts ans
