r,g,b = gets.split(" ").map(&:to_i)
puts (100r+10g+b)%4==0 ? "YES" : "NO"