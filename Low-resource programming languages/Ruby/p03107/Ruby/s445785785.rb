s = gets.chomp
red = s.count("0")
blue = s.length - red
puts [red, blue].min * 2
