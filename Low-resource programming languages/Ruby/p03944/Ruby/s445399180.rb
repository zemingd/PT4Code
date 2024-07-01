W, H, N = gets.split.map(&:to_i)
l, r, t, b = [0, W, H, 0]
N.times do 
    x, y, a = gets.split.map(&:to_i)
    case a
    when 1
        l = [l, x].max
    when 2
        r = [r, x].min
    when 3
        b = [b, y].max
    when 4
        t = [t, y].min
    end
end
p [r-l, 0].max * [t-b, 0].max