item = gets.chomp.split(/\s+/).map { |e| e.to_i }
a = item[0]
b = item[1]

aa = a.to_s * b
bb = b.to_s * a

if aa > bb
  puts bb
else
  puts aa
end


