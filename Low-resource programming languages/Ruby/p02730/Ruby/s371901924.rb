s = gets.chomp.chars

size = (s.size)/2.floor
mae = s.take(size)
ushiro = s[size+1..s.size]

if mae == mae.reverse && ushiro == ushiro.reverse
  puts "Yes"
else
  puts "No"
end