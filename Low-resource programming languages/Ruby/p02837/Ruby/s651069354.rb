n = gets.to_i

xy = []
n.times do
    a = gets.to_i
    xy << []
    a.times {xy[-1] << gets.split.map(&:to_i)}
end

ans = 0
(2 ** n).times do |b|
    re = catch do |tag|
        xy.each_with_index do |e, i|
            next if b[i] == 0

            e.each do |k, v|
                throw(tag, false) if b[k-1] != v
            end
        end
        true
    end

    if re
        t = sprintf("%0*b", n, b).count("1")
        ans = t if ans < t
    end
end

puts ans