N, K = gets.split.map(&:to_i)
S = gets.chomp.bytes
B = (0 .. N).select{|i| i.zero? || i == N || S[i - 1] != S[i] }
ans = B.each_index.map do |i| 
    if S[B[i]] == ?0
      j = (i + 2 * K < B.size) ? i + 2 * K : B.size - 1
      B[j] - B[i]
    else
      j = (i + 2 * K + 1 < B.size ) ? i + 2 * K + 1 : B.size - 1
      B[j] - B[i]
    end
  end.max
puts ans