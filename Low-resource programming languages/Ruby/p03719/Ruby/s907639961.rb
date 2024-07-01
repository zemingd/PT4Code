a, b, c = gets.chomp.split.map {|i| i.to_i}
puts(a <= c && c <= b ? 'Yes' : 'No')
