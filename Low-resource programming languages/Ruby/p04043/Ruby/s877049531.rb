a, b, c = gets.chomp.split(" ")
if ((a == "5") && (b == "5") && (c == "7")) || ((a == "7") && (b == "5") && (c == "5")) || ((a == "5") && (b == "7") && (c == "5")) then
  puts "YES"
else
  puts "NO"
end
