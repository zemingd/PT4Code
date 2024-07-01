a, b, c = gets.split.map(&:to_i)
cnt = 0
for i in a..b
    if c % i == 0
        cnt += 1
    end
end
puts cnt