n,k=gets.chomp.split.map(&:to_i)
lengths=gets.chomp.split.map(&:to_i).sort.reverse
puts lengths[0..(k-1)].inject(:+)