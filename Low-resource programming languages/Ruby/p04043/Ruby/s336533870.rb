five = 0
seven = 0
gets.chomp.split.each { |n|
    num = n.to_i
    if num == 5
        five += 1
    elsif num == 7
        seven += 1
    end
}

if five == 2 && seven == 1
    puts 'YES'
else
    puts 'NO'
end