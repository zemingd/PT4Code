n = gets.chomp.to_i
height = Array.new(n)
height = gets.chomp.split(" ").map(&:to_i)
count = 1
max = height[0]
for i in 1...n do
    if height[i] >= max
        count += 1
        max = height[i]
    end
end
puts count