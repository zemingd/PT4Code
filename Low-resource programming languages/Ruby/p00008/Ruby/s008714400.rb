comb = Hash.new(0)
p = [*0..9].repeated_permutation(4){|a, b, c, d|
  comb[a + b + c + d] += 1
}
while gets
  puts comb[$_.to_i]
end