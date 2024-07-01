s = gets.chomp
a = []
a[i] = 0 for i in 0...26
s.downcase!
a[ s[i].ord-"a".ord ] += 1 for i in 0...s.length
for i in 0...26
  print ("a".ord+i).chr, " : ", a[i], "\n"
end