n, k = gets.split.map(&:to_i)
ln = gets.split.map(&:to_i).sort{|a, b| b<=>a}

puts ln[0...k].inject(:+)