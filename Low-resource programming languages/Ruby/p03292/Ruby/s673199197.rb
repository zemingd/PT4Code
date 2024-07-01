num = gets.split.map {|i| i.to_i}
num.sort!
puts (num[1] - num[0]).abs + (num[2] - num[1]).abs