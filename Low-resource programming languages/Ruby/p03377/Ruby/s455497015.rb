a, b, x = gets.split.map(&:to_i)

if a > x
    puts 'NO'
    exit
end

x -= a
b -= a
puts b >= x ? 'YES' : 'NO'
