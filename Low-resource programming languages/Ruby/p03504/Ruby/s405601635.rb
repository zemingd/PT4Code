N, C = gets.chomp.split(' ').map(&:to_i)

program = []
(1..N).each do |i|
    s, t, c = gets.chomp.split(' ').map(&:to_i)
    program << {'s': s-0.5, 't': t, 'c': c}
end

program.sort! do |a, b|
    a[:s] <=> b[:s]
end

max = 1
offset = 0
(1..(N-1)).each do |i|
    count = 1
    (offset..(i-1)).each do |j|
        if program[i][:s] < program[j][:t]
            count += 1
        else
            offset = j + 1
        end
    end
    max = count if max < count
end

p max