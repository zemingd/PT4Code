w, h, n=gets.split.map &:to_i

i, j=0, 0
n.times do
    x, y, a=gets.split.map &:to_i
    case a
        when 1 then j=x if j<x
        when 2 then w=x if x<w
        when 3 then i=y if i<y
        when 4 then h=y if y<h
    end
end

puts [(w-j)*(h-i), 0].max