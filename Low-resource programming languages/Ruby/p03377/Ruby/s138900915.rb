a,b,x = gets.strip.split(" ").map(&:to_i)
print x.between?(a, a + b)? "YES" : "NO"