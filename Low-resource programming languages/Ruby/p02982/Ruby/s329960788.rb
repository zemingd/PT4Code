SQUARES = (1..20).map{|i| i ** 2}

def distance(x1, x2)
  x1.zip(x2).map{|e1, e2| (e1 - e2)**2}.inject(:+)
end

n, d = gets.split.map(&:to_i)
x_arr = n.times.map{gets.split.map(&:to_i)}
puts x_arr.combination(2).count{|x1, x2| SQUARES.include?(distance(x1, x2))}