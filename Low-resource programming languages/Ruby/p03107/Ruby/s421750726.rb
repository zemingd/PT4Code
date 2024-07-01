s=gets.chomp
r = s.count("1")
b = s.count("0")
if r>b
  puts 2*b
else
  puts 2*r
end