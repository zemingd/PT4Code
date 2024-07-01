k = gets.to_i
a,b = gets.chomp.split(" ").map(&:to_i)

c = a % k
a = a + k -c

if a <= b
  puts "OK"
else
  puts "NG"
end