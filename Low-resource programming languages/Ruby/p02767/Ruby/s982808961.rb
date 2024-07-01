n = gets.to_i
x = gets.chomp.split(" ").map(&:to_i)
min = 0
for i in x.min..x.max do
    totalDistance = 0
    for j in x do
        totalDistance += ((i - j).abs) ** 2
    end
    if i == x.min
        min = totalDistance
        next
    end
    if min > totalDistance
        min = totalDistance
    end
end
puts min