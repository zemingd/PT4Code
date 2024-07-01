a,b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
s.slice(a) != "-" || s.slice(0...a).include?("-") == 0 || s.reverse.slice(0...b).include?("-") == 0 ? answer = "No" : answer = "Yes"
puts answer
