n = gets.to_s

sn = 0
for i in 0...n.length do
    sn += n[i].to_i
end

if n.to_i % sn == 0
    puts "Yes"
else
    puts "No"
end
