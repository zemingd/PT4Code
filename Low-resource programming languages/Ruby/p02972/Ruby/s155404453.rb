n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ball = Array.new(n,0)
box = []

tar = n
for i in 1..n do
    # puts tar
    # puts a[n-i]
    # puts ball[n-i]
    if a[n-i] != ball[n-i]
        box.push(n-i+1)
        for j in 1..Math.sqrt(tar) do
            if tar % j == 0
                ball[j-1] = 1 - ball[j-1]
                if j*j != tar
                    ball[tar/j -1] = 1 - ball[tar/j -1]
                end
            end
        end
    end
    tar -= 1
end

m = box.size
puts m
cnt = 0
if m > 0
    puts box.join(' ')
end