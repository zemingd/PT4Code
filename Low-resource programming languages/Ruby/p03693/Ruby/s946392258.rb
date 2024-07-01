r,g,b=gets.split.map &:to_i
puts (10*g+b)%4==0 ? "YES":"NO"
