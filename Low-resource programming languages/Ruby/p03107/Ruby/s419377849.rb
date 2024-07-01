s=gets.chomp
r = s.count("1")
b = s.count("0")
if r>b
  put 2*r
else
  puts 2*b
end