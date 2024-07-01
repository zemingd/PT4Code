n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

# iの箱にボールが入っているなら1
ball = Array.new(n,0)
# ボールを入れる箱の番号
b = []

# nから順にボールを入れるか決定する
n.step(1,-1) do |i|
    if i > n/2 
        if a[i-1] == 1
            ball[i-1] = 1
            b.push(i)
        end
    else
        cnt = 0
        i.step(n,i) do |j|
            if ball[j-1] == 1
                cnt += 1
            end
        end
        mod = cnt%2
        if a[i-1] != mod
            ball[i-1] = 1
            b.push(i)
        end
    end
end

m = b.size
puts m
if m > 0
    puts b.join(' ')
end