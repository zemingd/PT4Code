A,B = gets.split.map(&:to_i)
a = 0
for i in A..B
    if i.to_s.split('') == i.to_s.split('').reverse
        a += 1
    end
end
puts a
