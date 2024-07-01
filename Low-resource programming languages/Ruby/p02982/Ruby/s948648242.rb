n, d = gets.split.map(&:to_i)
x = n.times.map{|_| gets.split.map(&:to_i)}

ans = 0
(0...n-1).each do |i|
  (i+1...n).each do |j|
    dist = 0
    d.times do |k|
      dist += (x[i][k] - x[j][k]) ** 2
    end
    dist = Math.sqrt(dist)
    if dist.floor == dist.ceil
      ans += 1
    end
  end
end
p ans