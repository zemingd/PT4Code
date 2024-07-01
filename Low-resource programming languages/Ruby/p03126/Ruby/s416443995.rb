n, m = gets.split(" ").map(&:to_i)
res = []
n.times do |i|
    a = gets.split(" ").map(&:to_i)
    a.shift
    p a
    if i == 0
        res = a
    else
        p res &= a
    end
    puts "res=#{res}"
end
puts res.count