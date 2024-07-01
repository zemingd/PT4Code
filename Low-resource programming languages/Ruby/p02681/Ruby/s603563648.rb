n = gets.chomp.split("")
a = gets.chomp.split("")
b = n.size
count = 0
(0..b-1).each do |i|
if n[i] == a[i]
count += 1
end
end

if b == count
puts "Yes"
else
puts "No"
end
