n = gets.split("").map(&:to_s)
y = gets.split("").map(&:to_s)
n = n.sort!.join("")
count = 0
for i in 0..100
if n[i] < y[i]
  count += 1
  break
end
end
if count >= 1
  puts "Yes"
else
  puts "No"
end



