w,h,n = gets.split.map!(&:to_i)
s,t = 0,0

n.times do
    x,y,a = gets.split.map!(&:to_i)

    if a == 1 then
        s = x if s < x
    elsif a == 2
        w = x if w > x
    elsif a == 3
        t = y if t < y
    else
        h = y if h > y
    end
end

if w - s < 0 || h - t < 0 then
    puts 0
else
    puts (w - s) * (h - t)
end