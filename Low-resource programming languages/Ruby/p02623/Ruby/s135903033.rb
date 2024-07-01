
def search(tim, d)
    i = 0
    j = d.size - 1
    
    if d[0] > tim
        return 0
    end

    while true
        if i >= j
            if i > d.size - 1
                return i
            end
            if tim >= d[i]
                return i + 1
            else
                return i
            end
        end

        k = (i + j).div(2)
        val = d[k]
        if tim == val
            return k + 1
        elsif tim > d[k]
            i = k + 1
        else
            j = k - 1
        end
    end
end

(N, M, K) = STDIN.gets.chomp.split(/\s/).map { |e| e.to_i }
a = STDIN.gets.chomp.split(/\s/).map { |e| e.to_i }
b = STDIN.gets.chomp.split(/\s/).map { |e| e.to_i }

c = []
d = []

tim = 0
for i in a do
    tim += i
    c.push(tim)
end

tim = 0
for i in b do
    tim += i
    d.push(tim)
end

ans = 0
c.each_with_index do |e, i|
    rest = K - e
    if rest < 0
        break
    end

    z = search(rest, d)
    if ans < i + 1 + z
        ans = i + 1 + z
    end
end

puts ans
