n, k = gets.split.map(&:to_i)
s = gets.chomp

ary = []
pre = "1"
c = 0
n.times do |i|
    if pre != s[i]
        ary << c
        c = 0
        pre = s[i]
    end
    c += 1
end
ary << c
ary << 0 if s[-1] == "0"
x = ary.size

ans = 0
0.step(x - 1, 2) do |i|
    if i + 2 * k >= x
        sum = ary[i..-1].inject(:+)
        ans = sum if ans < sum
        break
    end

    sum = ary[i, 2 * k + 1].inject(:+)
    ans = sum if ans < sum
end

puts ans
