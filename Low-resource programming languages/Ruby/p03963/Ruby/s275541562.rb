n,k = gets.split.map(&:to_i)
res=k
(n-1).times do |i|
    res *= (k-1)
end
puts res