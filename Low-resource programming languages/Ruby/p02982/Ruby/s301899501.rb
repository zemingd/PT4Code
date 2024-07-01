n, d = gets.strip.split.map(&:to_i)

arr = []

n.times do |a|
    arr << gets.strip.split.map(&:to_i)
end

ans = 0

(0..(n - 1)).each do |i|
    ((i + 1)..(n - 1)).each do |j|
        norm = 0
        (0..(d - 1)).each do |k|
            diff = arr[i][k] - arr[j][k]
            norm += diff * diff
        end

        flag = false
        (0..norm).each do |k|
            flag = true if k * k == norm
        end
        ans += 1 if flag
    end
end

puts ans

