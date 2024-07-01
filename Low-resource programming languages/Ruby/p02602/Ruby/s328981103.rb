nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

a = gets.chomp.split
points = []
point = 0
n.times do |i|
    a[i] = a[i].to_i
    point += a[i]
    if i >= k - 1
        points << point
        point -= a[i - k + 1]
    end
end

(n - k).times do |i|
    former = points[i]
    latter = points[i + 1]
    puts former < latter ? "Yes" : "No"
end
