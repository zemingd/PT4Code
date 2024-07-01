abc = gets.chomp.split.map(&:to_i).sort.reverse
puts abc[0] * 10 + abc[1] + abc[2]
