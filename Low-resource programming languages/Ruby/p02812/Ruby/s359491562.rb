gets
s = gets
i = 0
c = 0
while true
    break if i >= s.size
    i = s.index("ABC", i)
    break unless i
    c += 1
    i += 3
end

puts c
