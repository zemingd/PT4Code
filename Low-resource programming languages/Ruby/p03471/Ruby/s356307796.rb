N, Y = gets.split.map(&:to_i)

YY = (Y - 1000 * N) / 1000
# 9 a + 4 b = YY
# a + b <= N

answer = false
for x in 0..N
    for y in 0..(N-x)
        if 9 * x + 4 * y == YY
            z = N - x - y
            print [x,y,z].join(" ")
            exit
        end
    end
end
print "-1 -1 -1"