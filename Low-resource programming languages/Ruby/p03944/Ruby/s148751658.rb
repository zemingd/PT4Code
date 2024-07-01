W, H, N = gets.split.map(&:to_i)
l, r, t, b = [0, W, H, 0]
N.times do 
    x, y, a = gets.split.map(&:to_i)
    case a
    when 1
        l = x
    when 2
        r = x
    when 3
        b = y
    when 4
        t = y
    end
end
p [r-l, 0].max * [t-b, 0].max