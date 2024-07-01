H = gets.chomp.to_i
h = H
i = 0
while H > 1 do
    H /= 2
    i += 1  
end

puts "#{h + i}"