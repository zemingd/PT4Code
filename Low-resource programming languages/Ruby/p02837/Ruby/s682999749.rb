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
            e.each do |k, v|
                throw(tag, 0) if b[k] == b[i] ^ v 
            end
        end
    end
    
    if !re
        t = sprintf("%0*b", n-1, b).count("0")
        ans = t if ans < t
    end
end

puts ans