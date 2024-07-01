n = gets.to_i

sn = 0
for i in 0...n.to_s.length do
    sn += n[i]
end

if n % sn == 0
    puts "Yes"
else
    puts "No"
end
