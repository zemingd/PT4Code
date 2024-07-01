input = gets
a = input.split
b = a.sort

if b[1] == "7"
  puts "NO"
elsif b[1] == "5" && b[0] == "5" && b[2] == "7"
  puts "YES"
end