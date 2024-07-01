_ = gets
h = gets.chomp.split.map(&:to_i)
puts h.chunk_while {|i, j| i >= j }.map {|b| b.size }.max - 1