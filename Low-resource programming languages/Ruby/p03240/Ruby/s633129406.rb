n = gets.to_i

xyh = []
n.times {xyh << gets.split.map(&:to_i)}

ans = catch do |tag|
    101.times do |i|
        101.times do |j|
            l = 0
            r = 10 ** 12

            xyh.each do |x, y, h|
                if h == 0
                    break if (ar = (x - i).abs + (y - j).abs) < l
                    r = ar if r > ar
                else
                    break if !(ah = h + (x - i).abs + (y - j).abs).between?(l, r) 
                    l = r = ah
                end
            end and throw(tag, [i, j, l])
        end
    end
end

puts ans.join(" ")