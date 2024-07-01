N = gets.chomp.to_i
a = Array.new(N+1)
str = gets.split
for i in 0...N do
    a[i+1] = str[i].to_i
end

ball = Array.new(N+1,0)
ball_p = Array.new(0)
i = N
j = 0
k = 0
l = 0
while i > 0
    j = i
    k = j
    l = 0
    while k <= N
        l += ball[k]
        k += j
    end
    if l%2 != a[i]
        ball[i] = 1
        ball_p.push(i)
    end
    i -= 1
end

puts ball_p.size
if ball_p.size == 0
    exit
end
while ball_p.size > 0
    print ball_p.pop
    print " "
end
puts