N, K = gets.split.map(&:to_i)
LogK = Math.log2(K)
puts 1.0 / N *
       (1..N).map { |n|
         n <= K ? 1.0 / 2**(LogK - Math.log2(n)).ceil : 1.0
       }.inject(:+)
