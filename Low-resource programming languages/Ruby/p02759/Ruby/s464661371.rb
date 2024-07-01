count = gets.chomp.to_i

if count < 2
    puts 1
else
    reslut = count / 2
    total = reslut.floor
    if count % 2 != 0
        total += 1
    end
    puts total
end