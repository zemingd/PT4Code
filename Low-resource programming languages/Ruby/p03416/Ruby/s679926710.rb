A, B = gets.split.map(&:to_i)

count = 0
for i in A..B
    s = i.to_s
    if s == s.reverse
        count += 1
    end
end

puts count