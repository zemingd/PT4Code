def min(c1, c2, c3, c4)
    x = (c1 < c2) ? c1 : c2
    y = (c3 < c4) ? c3 : c4
    (x < y) ? x : y
end

def mp(n, a, b, c)
    if n == $N
        if min(a, b, c, c) > 0
            (a - $A).abs + (b - $B).abs + (c - $C).abs - 30
        else
            10000
        end
    else
        c1 = mp(n + 1, a, b, c)
        c2 = mp(n + 1, a + $l[n], b, c) + 10
        c3 = mp(n + 1, a, b + $l[n], c) + 10
        c4 = mp(n + 1, a, b, c + $l[n]) + 10

        min(c1, c2, c3, c4)
    end
end

$N, $A, $B, $C = gets.split.map!{|n| n.to_i}
$l = Array.new($N)

for i in 1..$N
    $l[i-1] = gets.to_i
end

puts mp(0, 0, 0, 0)