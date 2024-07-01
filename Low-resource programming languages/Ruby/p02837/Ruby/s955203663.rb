n = gets.to_i
d = Array.new(n+1){Array.new(n+1)}

1.upto(n) do |i|
    a = gets.to_i
    a.times do 
        x,y = gets.split.map(&:to_i)
        d[i][x] = y
    end
end

ans = 0

1.upto(n) do |i|
    s = 0
    h = [i]
    l = []
    q = [i]

    while z = q.shift
        d[z].each_with_index do |value, index|
            if value == 1
                next if h.include?(index)
                if l.include?(index)
                    s = 1
                    break
                end
                h << index
                q << index
            elsif value == 0
                next if l.include?(index)
                if h.include?(index)
                    s = 1
                    break
                end
                l << index
            end
        end

        1.upto(n) do |j|
            if d[j][z] == 1
                next if h.include?(j)
                if l.include?(j)
                    s = 1
                    break
                end
                h << j
                q << j
            elsif d[j][z] == 0
                next if l.include?(j)
                if h.include?(j)
                    s = 1
                    break
                end
                l << j
            end
        end
        break if s == 1
    end
    next if s == 1
    ans = h.size if ans < h.size
end

puts ans