a, b, c = gets.split(" ").map(&:to_i)
d = b + c
 
while d < 10**5
  if d % a == 0
    puts "YES"
    exit
  end
  d += b
end
 
puts "NO"