A, B, C, D = gets.chomp.split.map(&:to_i)
c_ary = (A..B).to_a.select { |i| i % C == 0 }
d_ary = (A..B).to_a.select { |i| i % D == 0 }
p (A..B).size - c_ary.concat(d_ary).uniq.size
