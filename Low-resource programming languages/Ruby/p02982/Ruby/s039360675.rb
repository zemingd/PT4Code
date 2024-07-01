n, d = gets.chomp.split(' ').map(&:to_i)
points = readlines.map(&:chomp).map{|point| point.split(" ").map(&:to_i)}

cnt = 0
dest_sq = 0
n.times do |i|
    (i+1).upto(n-1) do |j|
        next if i == j
        d.times do |k|
            dest_sq += (points[j][k] - points[i][k])**2
        end
        cnt += 1 if Math.sqrt(dest_sq) % 1 == 0
        dest_sq = 0
    end
end

puts cnt