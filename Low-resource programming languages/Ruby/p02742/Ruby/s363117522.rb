input = gets.chomp.split
h = input[0].to_i
w = input[1].to_i

if h != 1 && w != 1
    area = h * w / 2
    if h.odd? && w.odd?
        area += w / 2
    end
else
    area = 1
end

puts area