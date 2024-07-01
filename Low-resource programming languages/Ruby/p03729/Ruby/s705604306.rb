a,b,c=gets.chomp.split(" ")
puts (a[-1].eql?(b[0]) and b[-1].eql?(c[0])) ? "YES" : "NO"
