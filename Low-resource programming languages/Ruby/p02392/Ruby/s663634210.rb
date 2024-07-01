tmp = gets.chomp.split.map(&:to_i)
a = tmp[0]
b = tmp[1]
c = tmp[2]

if a<b && b<c
  puts "Yes"
else
  puts "No"
end