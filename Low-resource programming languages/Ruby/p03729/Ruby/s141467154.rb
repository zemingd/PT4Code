a,b,c=gets.split.map(&:to_s)
puts (a[-1]==b[0])&&(b[-1]==c[0]) ? "YES" : "NO" 