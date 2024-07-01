n = gets.to_i
s = gets.chomp
p (1...n).map{|t| (s[0...t].chars & s[t..-1].chars).size}.max