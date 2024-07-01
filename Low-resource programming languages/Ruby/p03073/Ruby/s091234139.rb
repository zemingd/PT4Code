line = gets.chomp.split("").map(&:to_i)

ans = 0
for i in 1..line.length-1
    if line[i] == line[i - 1]
        ans += 1
        line[i] = line[i] == 0 ? 1 : 0
    end
end

puts ans
