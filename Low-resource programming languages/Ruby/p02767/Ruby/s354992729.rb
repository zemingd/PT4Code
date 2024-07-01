n = gets.to_i
x = gets.split.map(&:to_i).sort
y = x.map{|t|t-x[0]}

p 101.times.map{|i|
  n.times.map{|j|(y[j]-i)**2}.inject(:+)
}.min
