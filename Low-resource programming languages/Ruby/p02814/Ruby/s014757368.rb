N, M = gets.split.map &:to_i
A = gets.split.map &:to_i
HA = A.map { |a| a / 2 }

exist = A.map { |a|
    buf = a
    count = 0
    while buf.even?
        buf /= 2
        count += 1
    end
    count
}.uniq.size == 1
if not exist
    p 0
else
    l = HA.inject(1) { |a, b| a.lcm(b) }
    p (M / l / 2) + (M / l % 2)
end