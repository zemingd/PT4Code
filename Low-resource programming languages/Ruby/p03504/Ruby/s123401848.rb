N, C = gets.chomp.split(' ').map(&:to_i)

program = []
(1..N).each do |i|
    s, t, c = gets.chomp.split(' ').map(&:to_i)
    program << {'s': s, 't': t, 'c': c}
end

program.sort! do |a, b|
    a[:s] <=> b[:s]
end

# program.each do |pro|
#     p pro 
# end

max = 1
offset = 0
(1..(N-1)).each do |i|
    count = 1
    (offset..(i-1)).each do |j|
        if program[i][:c] == program[j][:c] && program[i][:s] >= program[j][:t]
            offset = j + 1
        elsif program[i][:s] - 0.5 < program[j][:t]
            count += 1
        else
            offset = j + 1
        end
    end
    max = count if max < count
end

print max