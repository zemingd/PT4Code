r,g,b=gets.split.map &:to_i
puts (r*100+g*10+b)%4==0 ? "YES" : "NO"