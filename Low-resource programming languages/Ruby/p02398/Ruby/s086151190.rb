a, b, c = gets.split.map(&:to_i)
divisorCount = 0

while a <= b do
    if c % a == 0
        divisorCount += 1
    end
    a += 1
end

puts divisorCount