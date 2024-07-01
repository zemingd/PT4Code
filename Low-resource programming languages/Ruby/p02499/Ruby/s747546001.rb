s = ""
t = ""
while t=gets
  s += t.chomp
end
a = []
for i in 0...26
  a[i]=0
end
s.downcase!
for i in 0...s.length
  a[ s[i].ord-"a".ord ] += 1 if "a".ord <= s[i].ord && s[i].ord <= "z".ord
end
for i in 0...26
  print ("a".ord+i).chr, " : ", a[i], "\n"
end