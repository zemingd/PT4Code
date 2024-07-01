data = STDIN.gets.chomp
a = data.count("1")
b = data.count("0")
if a > b
  puts b*2
else
  puts a*2
end