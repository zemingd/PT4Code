C = []
for i in 0..2
    C.push(gets.chomp)
end

ans = ''
for i in 0..2
    ans += C[i][i]
end

puts ans