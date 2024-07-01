n,d = gets.split.map(&:to_i)
a = n.times.map{gets.split.map(&:to_i)}
ans = 0
(0..(n-2)).each do |i|
    ((i+1)...n).each do |j|
        sum = 0
        d.times do |k|
            sum += (a[i][k]-a[j][k])**2
        end
        s = Math.sqrt(sum).floor
        if (s*s == sum )
            ans += 1
        end
    end
end
puts ans