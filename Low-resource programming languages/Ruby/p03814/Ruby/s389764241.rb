s = gets.chomp.split("")
puts s.length - s.reverse.index("Z") - s.index("A")