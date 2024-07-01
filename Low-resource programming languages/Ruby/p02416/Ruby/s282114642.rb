$<.take_while{|l| l.chomp != '0'}.map{|l|puts l.chars.map(&:to_i).reduce(:+)}

