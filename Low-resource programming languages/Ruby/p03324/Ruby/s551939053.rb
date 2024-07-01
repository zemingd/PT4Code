d,n = gets.chomp.split.map(&:to_i)

d_map = {
  0 => 1,
  1 => 100,
  2 => 10000
}

puts d_map[d] * n
