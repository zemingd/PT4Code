s = gets.chomp.split("")
arr = []
f = s.shift
e = s.pop
ookisa = s.size
arr << f
arr << ookisa
arr << e
puts arr.join("")
