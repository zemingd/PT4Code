S = gets.chomp!
c = [0,0]

for i in 1..S.size
    c[S[i-1].to_i] += 1
end

puts (c[0] < c[1]) ? 2 * c[0] : 2 * c[1]