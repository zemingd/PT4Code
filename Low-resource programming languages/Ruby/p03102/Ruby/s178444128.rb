N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = Array.new(M) { gets.split.map(&:to_i) }
puts A.count { |as| A[0].map.with_index { |a, i| a * B[i] }.inject(:+) + C > 0 }