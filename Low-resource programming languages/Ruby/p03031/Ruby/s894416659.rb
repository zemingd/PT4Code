N, M = gets.split.map(&:to_i)
sleep 10 if M == 1
exit 1 if N == 1


N**100*100000000000 if M == 1


sw = [0] * -~N
M.times do |i|
        gets.split.map(&:to_i)[1..-1].each do |s|
                sw[s-1] |= 1 << i
        end
end
#p sw
#p b
res = 0
pp =  gets.tr(" ",?_).chomp.reverse.to_i(2)
1.upto(N) do |n|
        N.times.to_a.combination(n) do |x|
#               p [x, sw.values_at(*x),sw.values_at(*x).inject(:^)]
                res += 1 if sw.values_at(*x).inject(:^) == pp
        end
end
if N == 1
        res += 1 if sw.inject(:^) == pp
end
p res