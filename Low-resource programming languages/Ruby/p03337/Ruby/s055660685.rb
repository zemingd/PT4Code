def add_sub_mul(n, m)
  [(n + m), (n - m), (n * m)].max
end

n, m = ARGV[0].to_i, ARGV[1].to_i

puts add_sub_mul(n, m)