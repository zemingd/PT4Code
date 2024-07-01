a,b,c,k = gets.chomp.split(" ").map(&:to_i)
sum = 0

if(a >= k)
  sum += k
elsif(a + b >= k)
  sum += a
else
  sum += a - (k - a - b)
end

puts sum