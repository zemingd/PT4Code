s=gets.chomp
a=s.index("A")
z=s.length-1-s.reverse.index("Z")
puts z-a+1
