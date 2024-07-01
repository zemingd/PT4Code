n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)
arr = []
count = 0
while true
    point = a.shift
    count += b[point - 1]
    if arr[-1] == point - 1
        count += c[point - 2]
    end
    arr << point
    if a == []
        break
    end
end
puts count