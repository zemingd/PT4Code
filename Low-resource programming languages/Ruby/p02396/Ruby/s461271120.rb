i=1
while line=gets.chomp.to_i
    if line == 0
        break
    else
        puts "Case #{i}: #{line}"
    end
    i+=1
end