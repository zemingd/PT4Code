a,b,c,k = gets.chomp.split(" ").map(&:to_i)

if k < a
  puts a - k
elsif k == a
  puts a
elsif k <= a + b
  puts a
else
  puts a + (k - a - b) * (-1)
end

