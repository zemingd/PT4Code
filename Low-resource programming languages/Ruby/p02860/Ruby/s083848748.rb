n = gets.to_i
s = gets.chomp

if n%2 == 1
  puts "No"
  exit
end

x = n/2
str = s[0..x-1]
if s[x..n-1] == str
  puts "Yes"
else
  puts "No"
end