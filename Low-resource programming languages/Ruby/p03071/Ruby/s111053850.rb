a, b = gets.split(" ").map(&:to_i)
x = (a - b).abs
if x >=1
    max = [a, b].max
    sum = max * 2 - 1
else
    sum = a * 2
end
puts sum
