a, b, x = gets.split.map(&:to_i)

if a == x
    puts 'YES'
    exit
end

if a < x
    if a + b >= x
        puts 'YES'
        exit
    end
end

puts 'NO'