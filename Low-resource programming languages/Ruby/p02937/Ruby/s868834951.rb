n, k = gets.chomp!.split(" ").map(&:to_i)
a_n = gets.chomp!.split(" ").map(&:to_i).sort!
f_n = gets.chomp!.split(" ").map(&:to_i).sort!.reverse!

sum = Array.new(n, 0)
min = 0
max = 0
n.times do |i|
    sum[i] = a_n[i] * f_n[i]
    if max < sum[i]
        max = sum[i]
    end
end

ans = 0
while min != max
    mid = (min + max) / 2
    count = k
    n.times do |i|
        next if sum[i] < mid

        y = mid / f_n[i]
        count -= (a_n[i] - y)
    end
    if count >= 0
        ans = mid
        max = mid
    else
        if ans == min + 1
            break
        end
        min = mid
    end
end

puts ans
