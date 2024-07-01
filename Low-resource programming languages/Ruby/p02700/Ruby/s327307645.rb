a,b,c,d = gets.chomp.split.map(&:to_i)

while a > 0
  a = a - d
  b = b - c
end
puts a
puts b

if a > b
  puts "Yes"
else
  puts "No"
end