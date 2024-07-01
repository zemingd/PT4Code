a, b, x = gets.chomp.split(" ").map(&:to_i)
ans = "NO"
if a == x
  ans = "YES"
elsif a < x
  if x - a <= b 
    ans = "YES"
  end
end
puts ans