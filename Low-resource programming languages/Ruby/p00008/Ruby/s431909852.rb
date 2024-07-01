comb = Hash.new(0)
[*0..9].repeated_permutation(4){|items|
  comb[items.inject(:+)] += 1
}
while gets
  puts comb[$_.to_i]
end