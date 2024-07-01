N=gets.to_i
as=gets.split.map(&:to_i)
bs=gets.split.map(&:to_i)

rest = as[-1]
ret = 0
(N-1).downto(0) do |i|
    x = [bs[i], rest+as[i]].min
    ret += x
    rest = as[i] - [x-rest,0].max
end

puts ret
