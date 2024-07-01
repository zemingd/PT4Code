r,g,b = gets.split("\s").map {|s| s.to_i}
s = r*100 + g*10 + b
if s%4 == 0 then
  puts "YES"
else
  puts "NO"
end