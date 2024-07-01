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

diff = 1
intx = X.to_i(2)
xar = X.split('').reverse
pl_mod = intx % (xcnt + 1)
mi_mod = false
if xcnt > 1
    mi_mod = intx % (xcnt - 1)
end
results = xar.map do |i|
    mo = nil
    if i == "0"
        mo = (pl_mod + diff) % (xcnt + 1)
    else
        unless mi_mod
            next 0
        end
        mo = (mi_mod - diff) % (xcnt - 1)
    end
    next fmap[mo] + 1
ensure
    diff *= 2
end

puts results.reverse.join("\n")