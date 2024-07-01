a, b, c, d = gets.chomp.split(" ").map(&:to_i)
i = 0
while a > 0 && b > 0
    if i % 2 == 0
        c -= b
    else
        a -= d
    end
    i += 1
end

puts a > c ? "Yes" : "No"