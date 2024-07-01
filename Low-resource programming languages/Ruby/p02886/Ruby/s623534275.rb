n = gets.to_i
takoyaki_points = gets.chomp.split(' ').map(&:to_i)
ans = 0
(takoyaki_points.size-1).times do |i|
    (i+1).upto(takoyaki_points.size-1) do |j|
        ans += takoyaki_points[i]*takoyaki_points[j]
    end
end
puts ans