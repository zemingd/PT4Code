ar = []
while line = gets
    ar.push(line.chomp.to_i)
end

for i in 0..(ar.length)
    if ar[i] == 0
        break
    end
    puts "Case #{i+1}: #{ar[i]}" 
end