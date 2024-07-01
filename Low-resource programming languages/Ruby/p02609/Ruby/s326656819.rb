N = gets.to_i
X = gets.chomp
# N = 2 * 10**5
# X = "1"*(N-1) + "0"
xcnt = X.count('1')

fmap = {
    0 => 0,
    1 => 1
}
2.upto(xcnt) do |x|
    cnt = x.to_s(2).count('1')
    fmap[x] = fmap[x % cnt] + 1
end

diff = 2**(N-1)
intx = X.to_i(2)
N.times do |i|
    x = nil
    if X[i] == "0"
        x = intx + diff
        cnt = xcnt + 1
    else
        x = intx - diff
        cnt = xcnt - 1
    end
    if x == 0
        puts 0
    else
        puts fmap[x % cnt] + 1
    end
    diff = diff / 2
end