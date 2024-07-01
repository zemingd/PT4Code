N,K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
(K..N-1).each do |i|
  ans = A[i]>A[i-K] ? 'Yes' : 'No'
  puts ans
end