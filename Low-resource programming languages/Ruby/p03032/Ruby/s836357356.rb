n, k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
l = [n, k].min

ans = 0

0.upto(l) do |a|
    0.upto(l - a) do |b|
        next if a + b == 0
        vv = v[0, a] + v[-b, b]
        vv.sort!
        c = k - a - b
        while c > 0 && !vv.empty? && vv[0] < 0
            vv.shift
            c -= 1
        end
        w = vv.inject(0, :+)
        ans = w if ans < w
        #p [a, b, vv]
    end
end

p ans