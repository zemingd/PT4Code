s = gets.chomp.split("")
count = 0
tmp1 = 0
tmp2 = 0
s.each do |i|
count += 1
if i == "A" and tmp1 == 0
tmp1 = count
end

if i == "Z" and tmp1 >= 1
tmp2 = count
end
end

puts tmp2 - tmp1 + 1