x, y, z, k = gets.split(' ').map(&:to_i)
as = gets.split(' ').map(&:to_i)
bs = gets.split(' ').map(&:to_i)
cs = gets.split(' ').map(&:to_i)
as.sort!.reverse!
bs.sort!.reverse!
cs.sort!.reverse!
ks = []
ans = []
x.times do |i|
    y.times do |j|
        ks << as[h] + bs[i]
    end
end
kks = ks.sort!.reverse![0..k-1]
k.times do |i|
    z.times do |j|
        ans << kks[i] + cs[j]
    end
end

puts ans.sort.reverse[0..k-1]
