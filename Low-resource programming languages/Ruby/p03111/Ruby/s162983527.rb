@n, @a, @b, @c = gets.split.map(&:to_i)
@l = @n.times.map {gets.to_i}

def calc(i, x, y, z)
    if i == @n
        x * y * z == 0 ? 1<<20 : (x-@a).abs + (y-@b).abs + (z-@c).abs - 30
    else
        c1 = calc(i+1, x, y, z)
        c2 = calc(i+1, x+@l[i], y, z) + 10
        c3 = calc(i+1, x, y+@l[i], z) + 10
        c4 = calc(i+1, x, y, z+@l[i]) + 10
        [c1, c2, c3, c4].min
    end
end

p calc(0,0,0,0)