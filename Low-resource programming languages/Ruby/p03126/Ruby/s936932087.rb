n, m = gets.split(" ").map(&:to_i)
res = []
n.times do |i|
    a = gets.split(" ").map(&:to_i)
    a.shift
    if i == 0
        res = a
    else
        res &= a
    end
end
puts res.count