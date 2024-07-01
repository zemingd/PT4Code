abc = gets.split.map(&:to_i).sort{|a, b| b <=> a}

puts abc[0] * 10 + abc[1] + abc[2]