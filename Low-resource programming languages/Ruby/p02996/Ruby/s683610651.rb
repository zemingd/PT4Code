n = gets.to_i
l = []
n.times do
    l.push(gets.split.map(&:to_i))
end
l.sort_by!{|a| a[1]}
t = 0
for i in 0 .. n - 1
    if t + l[i][0] > l[i][1]
        puts "No"
        exit
    end
    t += l[i][0]
end
puts "Yes"