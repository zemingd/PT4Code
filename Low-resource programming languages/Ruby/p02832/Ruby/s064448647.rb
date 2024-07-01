n = gets.to_i
a = gets.split(" ").map(&:to_i)

count = [1]
brick_b = 0
n.times do |i|
    if count.last != a[i]
        brick_b = brick_b + 1
    else count[0] == a[i]
        count.push(a[i]+1)
    end
end

if count.last == 1 and brick_b > 0
    puts -1
else
    puts brick_b
end