str = gets.to_s

n = str.split(" ")

n.sort!

n.each {|i| print i, " "}