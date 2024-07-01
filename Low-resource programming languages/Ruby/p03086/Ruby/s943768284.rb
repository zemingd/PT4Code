ans = gets.strip.each_char.map {|c| %w(A C G T).include?(c) }.slice_when {|l, r| l != r}.select {|a| a.first}.map(&:size).max || 0
puts ans
