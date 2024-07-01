n, d = gets.chomp.split.map(&:to_i)
poss = n.times.map { gets.chomp.split.map(&:to_i) }

cnt = 0
(0...n).each do |i|
    (i+1...n).each do |j|
        dist_sq = (0...d).map { |di| (poss[i][di] - poss[j][di]) ** 2 }.reduce(:+)
        dist = Math.sqrt(dist_sq)
        cnt = cnt + 1 if dist % 1 == 0
    end
end

puts cnt
