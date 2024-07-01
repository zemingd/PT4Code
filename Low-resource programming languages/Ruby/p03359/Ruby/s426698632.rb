line = gets.chomp.split(" ")
a = line[0].to_i
b = line[1].to_i

if b >= a
  puts a
else
  puts a-1
end