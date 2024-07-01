N, M = gets.chomp.split(' ').map(&:to_i)

def combi(n)
  return 0 if n <= 1
  return n * (n - 1) / 2
end

count_n = combi(N)
count_m = combi(M)

puts count_n + count_m
