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
xar = X.split('')
pl_mod = intx % (xcnt + 1)
mi_mod = intx % (xcnt - 1)
N.times do |i|
    x = nil
    mo = nil
    if xar[i] == "0"
        mo = (pl_mod + diff) % (xcnt + 1)
    else
        if xcnt == 1
            puts 0
            next
        end
        mo = (mi_mod - diff) % (xcnt - 1)
    end
    puts fmap[mo] + 1
ensure
    diff = diff / 2
end