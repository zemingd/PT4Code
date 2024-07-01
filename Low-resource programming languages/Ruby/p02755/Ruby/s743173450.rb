a, b = gets.chomp.split(" ").map(&:to_i)
ngo = (0..1009).select{|c| (c * 0.08).to_i == a && (c * 0.10).to_i ==  b}
puts ngo.length > 0 ? ngo.min : -1