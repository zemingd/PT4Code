n,m,c = gets.chop.split(" ").map(&:to_i)
b = gets.chop.split(" ").map(&:to_i)
count = 0
n.times do
    a = gets.split(" ").map(&:to_i)
    sum = 0
    m.times do |i|
        sum += a[i]*b[i]
    end
    if sum>-c then count += 1 end
end
puts count