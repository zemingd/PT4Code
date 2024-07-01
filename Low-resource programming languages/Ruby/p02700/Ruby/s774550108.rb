a,b,c,d = gets.chomp.split.map(&:to_i)

while a > 0
  c = c - b
  a = a - d
end

if 0 > a
  puts "Yes" 
elsif
  a > c
  puts "Yes"
else
  puts "No"
end