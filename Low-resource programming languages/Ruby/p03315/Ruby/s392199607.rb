s = gets.chomp.split("")
answer = 0
s.each{|op| answer += (op == "+" ? 1 : -1)}
puts answer