a, b, c = gets.strip.split.map(&:to_i)

foo = []
bar = 1
while (a * bar.succ) < 100 do
    foo.push(a * bar)
    bar += 1
end

result = 0
for var in foo do
    if (var % b) == c
        result = 1
        break
    end
end

puts result == 1 ? "YES" : "NO"
