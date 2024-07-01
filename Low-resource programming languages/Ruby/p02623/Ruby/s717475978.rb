#!/usr/bin/env ruby

N, M, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

1.upto(N-1) do |i|
  A[i] = A[i-1] + A[i]
end

1.upto(M-1) do |i|
  B[i] = B[i-1] + B[i]
end

n = N
m = M

max = 0

0.upto(n-1) do |i|
  (m-1).downto(0) do |j|
    if A[i] + B[j] <= K
      m = j + 1
      v = i + 1 + j + 1
      max = v if max <= v
      break
    end
  end
end

puts max
