n, a, b, c = gets.split.map(&:to_i)
l = n.times.map {gets.to_i}

ans = 1 << 31
(4 ** n).times do |i|
    x = [0, 0, 0]
    sum = 0
    i = i.to_s(4).rjust(n, ?0)

    i.each_char.with_index do |j, k|
        j = j.to_i
        if j != 3
            x[j] += l[k]
            sum += 10
        end
    end

    next if x.include?(0)
    sum += (x[0] - a).abs + (x[1] - b).abs + (x[2] - c).abs - 30
    ans = sum if ans > sum
end

puts ans