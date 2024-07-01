a = gets.split("").map{|n|n.to_i}
k = 0
for i in 0..2
if a[i] == a[i+1] then
k = 1
end
end
if k == 0 then
puts "Good"
else
puts "Bad"
end