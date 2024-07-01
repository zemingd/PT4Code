N,K = gets.split.map(&:to_i)

count = K
(N-1).times do
  count *= K-1
end

puts count