x = gets.to_s
x = x.split(" ").map(&:to_i)
x = x.sort

if ((x[0] == x[1] && x[1] == x[2]) || (x[0] != x[1] && x[0] != x[2] && x[1] != x[2])) then
  puts "No"
else
  puts "Yse"
end
