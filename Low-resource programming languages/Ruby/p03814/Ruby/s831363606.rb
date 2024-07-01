s = gets.chomp

a = -1
z = 0
s.chars.each.with_index{|c, i|
  a = i if c=='A' && a==-1
  z = i if c=='Z'
}

puts z-a+1