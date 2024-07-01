c = []
while n=gets.to_i
  puts c[n]=[*0..9].repeated_permutation(4).count{|a|a.inject(:+)==n}
end