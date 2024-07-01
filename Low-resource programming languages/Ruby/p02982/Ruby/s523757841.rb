def dist_int?(x, y)
    a = x.zip(y).map{|xi, yi| (xi - yi) ** 2 }.inject(&:+)
    Math.sqrt(a).floor ** 2 == a
end

N, D = gets.chomp.split(" ").map(&:to_i)
x = []
N.times do 
    x << gets.chomp.split(" ").map(&:to_i)
end

ans = 0
for i in 0..N-1
    for j in i+1..N-1
        ans += 1 if dist_int?(x[i], x[j])
    end
end
puts ans