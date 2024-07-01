n,d=gets.split.map(&:to_i)
points = n.times.map { gets.split.map(&:to_i) }
cnt = 0
points.combination(2).each do |a,b|
  ans =a.zip(b).map {|x,y| (y - x)** 2}.inject(:+)
  cnt += 1 if Math.sqrt(ans) % 1 == 0
end
puts cnt