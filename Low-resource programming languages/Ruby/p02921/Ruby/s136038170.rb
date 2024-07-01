s = gets.chomp
t = gets.chomp
c = 0
s.each{|i|
  c += 1 if s[i] == t[i]
}
puts c