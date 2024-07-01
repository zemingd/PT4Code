a,b,c = gets.split.map!(&:to_i)

x = a % b
y = x
loop do
    if y == c
        puts "YES"
        exit
    end

    y = (y + x) % b
    break if y == x
end

puts "NO"