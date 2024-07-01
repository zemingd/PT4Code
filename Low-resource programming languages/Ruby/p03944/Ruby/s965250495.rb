w, h ,n = gets.chomp.split.map(&:to_i)
x1, x2, y1, y2 = 0, w, 0, h

n.times do
    x, y, a = gets.chomp.split.map(&:to_i)
    
    case a
    when 1 then
        x1 = x if x1 < x
    when 2 then
        x2 = x if x2 > x
    when 3 then
        y1 = y if y1 < y
    when 4 then
        y2 = y if y2 > y
    end
end

puts x1 < x2 && y1 < y2 ? (x2 - x1) * (y2 - y1) : 0