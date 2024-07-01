a, b = gets.split(" ").map{|i|i.to_i}
ope = [" == "," > ", " < " ]
puts "a" + ope[a <=> b] + "b"