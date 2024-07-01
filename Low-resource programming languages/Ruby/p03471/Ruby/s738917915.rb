n, yen = gets.split.map(&:to_i)

for x in 0..n
    for y in 0..n
        if 10000 * x + 5000 * y + 1000 * (n - x - y) == yen
            puts "#{x} #{y} #{(n - x - y)}"
            return 0
        end
    end
end

puts "-1 -1 -1"