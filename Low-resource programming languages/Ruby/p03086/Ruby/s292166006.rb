s = gets.chomp

max_s = s.scan(/[ATGC]+/).max{ |a, b| a.size <=> b.size }

puts max_s == nil ? 0 : max_s
