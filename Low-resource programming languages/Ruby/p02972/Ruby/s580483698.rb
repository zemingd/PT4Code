N = gets.to_i
a = gets.split(" ").map(&:to_i)
b = N/2
c = a.clone
ball = Array.new
for i in 0..b
    ball << b+i+1 if a[b+i] == 1
end
(b-1).downto(0) do |i|
    count = 0
    i.step(N-1, i+1) do |j|
        count += 1 if c[j] == 1
    end
    if count % 2 == a[i]
        if c[i] == 1
            ball << i+1
        end
    else
        if c[i] == 1
            c[i] = 0
        else
            c[i] = 1
            ball << i+1
        end
    end
end
puts ball.length
puts ball.join(" ") if ball.length != 0
