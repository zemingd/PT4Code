x, y, z, k = gets.split(' ').map(&:to_i)
as = gets.split(' ').map(&:to_i)
bs = gets.split(' ').map(&:to_i)
cs = gets.split(' ').map(&:to_i)
as.sort!.reverse!
bs.sort!.reverse!
cs.sort!.reverse!
ans = []
x.times do |h|
    y.times do |i|
        z.times do |j|
            break if h * i * j >= 3000
            ans << as[h] + bs[i] + cs[j]
        end
    end
end

puts ans.sort.reverse[0..k]
