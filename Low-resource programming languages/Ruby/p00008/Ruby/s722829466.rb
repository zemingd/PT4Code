$<.each do |l|
  n = l.to_i

  puts (0..9)
    .to_a
    .repeated_permutation(4)
    .select{|c| c.inject(:+) == n}
    .size
end