a, b = gets.chomp.split
aa = a * b.to_i
bb = b * a.to_i
if aa < bb
  puts aa
else
  puts bb
end