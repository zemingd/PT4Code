n, k = gets.split.map(&:to_i)
$v = gets.split.map(&:to_i)
ans = 0

def calc(l, r, k)
    k -= (l + r)
    return -1 if k < 0
    tmp = $v[0, l] + $v[-r, r]
    tmp.sort!
    k = [k, tmp.size].min
    res = tmp.sum
    k.times do |i|
        if tmp[i] >= 0
            break
        else
            res -= tmp[i]
        end
    end
    res
end

(0..k).each do |l|
    (0..k).each do |r|
        ans = [ans, calc(l, r, k)].max
    end
end

puts ans