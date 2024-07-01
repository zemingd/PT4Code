n, k = gets.split.map(&:to_i)
$v = gets.split.map(&:to_i)
ans = 0

def calc(l, r, k, n)
    k -= (l + r)
    return -1 if k < 0 || (l + r) > n
    tmp = ($v[0, l] + $v[-r, r]).sort
    k = [k, tmp.size].min
    res = 0
    tmp.each { |x| res += x }
    k.times do |i|
        res -= tmp[i] if tmp[i] < 0
    end
    res
end

(0..k).each do |l|
    (0..k).each do |r|
        ans = [ans, calc(l, r, k, n)].max
    end
end

puts ans