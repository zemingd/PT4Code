N = gets.to_i
P = gets.split(" ").map(&:to_i)
Q = gets.split(" ").map(&:to_i)

ary = (1..N).to_a.permutation.to_a
i, j = 0, 0
loop do
    if ary[i] == P
    break
    else
        i += 1
    end
end

loop do
    if ary[j] == Q
    break
    else
        j += 1
    end
end

puts (i - j).abs