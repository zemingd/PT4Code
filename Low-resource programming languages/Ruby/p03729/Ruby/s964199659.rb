a = readline.chomp.split
b = a[0].slice(-1)
c = a[1].slice(0)
d = a[1].slice(-1)
e = a[2].slice(0)
 if b == c && d == e
   puts "YES"
 else
   puts "NO"
 end