item = gets.chomp.split(/\s+/)
a = item[0]
b = item[1]
c = item[2]

if a == b && b != c ||
    a != b && b == c ||
    a == c && a != b
  puts 'Yes'
else
  puts 'No'
end
