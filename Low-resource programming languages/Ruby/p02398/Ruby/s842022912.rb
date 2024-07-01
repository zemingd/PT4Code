a, b, c = gets.split(" ").map(&:to_i)
e = 0

for i in a..b
    d = c % i
    if d == 0
        e += 1
    end
end

puts e