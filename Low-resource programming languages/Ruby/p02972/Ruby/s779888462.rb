n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ball = Array.new(n,false)

tar = n
for i in 1..n do
    # puts tar
    # puts a[n-i]
    # puts ball[n-i]
    if (a[n-i] == 1 && ! ball[n-i]) || (a[n-i] == 0 && ball[n-i])
        for j in 1..Math.sqrt(n) do
            if tar % j == 0
                ball[j-1] = !ball[j-1]
                if j*j != tar
                    ball[tar/j -1] = !ball[tar/j -1]
                end
            end
        end
    end
    tar -= 1
end

m = ball.count(true)
puts m
cnt = 0
for i in 1..n do
    if ball[i-1]
        print i," "
        cnt += 1
    end
    if cnt == m
        break
    end
end
