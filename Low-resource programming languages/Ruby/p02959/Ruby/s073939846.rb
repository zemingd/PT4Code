N=gets.to_i
as=gets.split.map(&:to_i)
bs=gets.split.map(&:to_i)

rest = as[-1]

i = N-1
ret = 0
while 0 <= i
    n = bs[i] - rest
    if n <= 0
        ret += bs[i]
        rest = as[i]
    else
        if as[i]+rest < bs[i]
            ret += as[i]+rest
            rest = 0
        else
            ret += bs[i]
            rest = as[i]+rest - bs[i]
        end
    end
    i -= 1
end

puts ret
