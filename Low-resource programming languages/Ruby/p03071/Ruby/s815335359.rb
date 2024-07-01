a, b = gets.chomp.split(" ").map(&:to_i)
max = [a,b].max
min = [a,b].min
count = 0
2.times do 
    count += max
    max = max - 1
    max = [max,min].max
end
puts count