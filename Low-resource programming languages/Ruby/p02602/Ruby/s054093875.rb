N, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

(K...N).each{|i|
  puts A[i] > A[i-K] ? 'Yes' : 'No'
}
