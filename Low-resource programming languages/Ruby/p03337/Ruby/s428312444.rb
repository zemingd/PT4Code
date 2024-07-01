def add_sub_mul(n, m)
  [(n + m), (n - m), (n * m)].max
end

n, m = gets.split(' ').map(&:to_i)

puts add_sub_mul(n, m)