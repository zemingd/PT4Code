n = gets.to_i
l = []
n.times do
    a, b = gets.split.map(&:to_i)
    l << [b, a]
end
l.sort!
t = 0
for i in 0 .. n - 1
    if t + l[i][1] > l[i][0]
        puts "No"
        exit
    end
    t += l[i][1]
end
puts "Yes"