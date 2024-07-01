a = gets.chomp
puts a.slice(a.index("A")..a.rindex("Z")).size