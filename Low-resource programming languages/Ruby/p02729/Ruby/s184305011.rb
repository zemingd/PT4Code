N, M = gets.chomp.split(' ').map(&:to_i)

def c(n, k)
  ((n - k + 1)..n).reduce(&:*) / (1..k).reduce(&:*)
end

p = c(N, 2)
q = c(M, 2)

puts p + q
