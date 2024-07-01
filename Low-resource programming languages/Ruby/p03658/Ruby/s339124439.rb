n,k=gets.chomp.split.map(&:to_i)
l=gets.chomp.split.map(&:to_i).sort
puts l[-k..-1].inject(:+)