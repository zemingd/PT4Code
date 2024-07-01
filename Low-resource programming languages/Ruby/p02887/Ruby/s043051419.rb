_ = gets
s = gets.chomp.chars
puts s.chunk_while {|i, j| i == j }.to_a.size