n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
hash = Hash.new(0)
a.each do |i|
    hash[i] += 1
end
hash = hash.to_a
arr = []
while true
    point = hash.pop
    if point[1] >= 2 && point[1] <= 3
        arr << point[0]
    elsif point[1] >= 4
        arr << point[0]
        arr << point[0]
    end
    if hash == []
        break
    end
end
ans = 1
if arr.size >= 2
    2.times do |i|
        ans *= arr.shift
    end
    puts ans
else
    puts "0"
end
