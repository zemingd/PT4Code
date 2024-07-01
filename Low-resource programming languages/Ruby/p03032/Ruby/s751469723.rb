n, k = gets.split.map(&:to_i)
$v = gets.split.map(&:to_i)
ans = 0

def calc(l, r, k)
    k -= (l + r)
    return -1 if k < 0
    tmp = $v[0, l] + $v[-r, r]
    tmp.sort!
    k = tmp.size if k > tmp.size
    res = 0
    tmp.each { |x| res += x }
    k.times do |i|
        res -= tmp[i] if tmp[i] < 0
    end
    res
end

(0..k).each do |l|
    (0..k).each do |r|
        res = calc(l, r, k)
        ans = res if res > ans
    end
end

puts ans