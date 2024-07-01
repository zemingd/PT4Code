
m,f,r = gets.split.map(&:to_i)

if m == -1 && f == -1 && r == -1 then
exit
else
if m == -1 || f == -1 then
puts "F"
else
d = m+f
if d >= 80 then
puts "A"
else
if d >= 65 then
puts "B"
else
if d >= 50 then
puts "C"
else
if d >= 30 then
if r >= 50 then
puts "C"
else
puts "D"
end
end
end
end
end
end
end
