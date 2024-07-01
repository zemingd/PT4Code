w,h,n = gets.chomp.split.map(&:to_i)
lx,ly = 0,0
hx,hy = w,h
n.times do
    x,y,a = gets.chomp.split.map(&:to_i)
    case a
    when 1 then
        lx = x if lx < x
    when 2 then
        hx = x if hx > x
    when 3 then
        ly = y if ly < y
    when 4 then
        hy = y if hy > y
    end
end

p [hx-lx,0].max * [hy-ly,0].max