p = [*0..9].repeated_permutation(4)
while gets
  n = $_.to_i
  puts p.count{|a, b, c, d| n == a + b + c + d}
end