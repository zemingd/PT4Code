N=gets.to_i
x = []
y = []
h = []
x2 = []
y2 = []
h2 = []

N.times do
    xx,yy,hh = gets.chomp.split.map(&:to_i)
    if hh > 0
        x << xx
        y << yy
        h << hh
    else
    end
end

c = []


0.upto(100) do |i|
    0.upto(100) do |j|
        t = h[0] + (x[0] - i).abs + (y[0] - j).abs
        if t >= 1
            c << [i,j,t]
        end
    end
end



#p c
1.upto(h.size-1) do |i|
    c2 = []
    c.each do |xx,yy,hh|
        if h[i] + (x[i] - xx).abs + (y[i] - yy).abs == hh
           c2 << [xx,yy,hh]
        end
    end
    c = c2
end
puts c[-1].join(" ")


