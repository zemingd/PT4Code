n = gets.chomp.split("")
a = gets.chomp.split("")
b = n.size
count = 0
(0..n-1).each do |i|
if n[i] == a[i]
conunt += 1
end
end

if b == count
puts "Yes"
else
puts "No"
end
