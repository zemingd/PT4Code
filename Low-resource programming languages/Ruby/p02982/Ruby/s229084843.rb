def judge?(x1, x2)
  dis = x1.zip(x2).map{|e1, e2| (e1 - e2)**2}.inject(:+)
  (1..dis).any?{|n| n**2==dis}
end

n, d = gets.split.map(&:to_i)
x_arr = n.times.map{gets.split.map(&:to_i)}
puts x_arr.combination(2).count{|x1, x2| judge?(x1, x2)}