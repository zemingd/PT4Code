N = gets
str = gets.chomp
len = str.length
 
if len % 2 != 0
  puts("NO")
  exit 0
end
 
half = len/2
first = str[0..half-1]
second = str[half..-1]
 

if first == second 
  puts("YES")
else
  puts("NO")
end
