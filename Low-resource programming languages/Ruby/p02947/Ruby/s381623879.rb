n = gets.to_i
s = (1..n).map{ gets.chomp.chars.sort.join}
puts s.group_by(&:itself).map {|k,v| v.combination(2).size }.reduce(:+)