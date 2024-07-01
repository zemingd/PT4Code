N = gets.to_i
X = gets.split.map &:to_i

p (X.min..X.max).map{|i|
  X.map{|x| (x - i) ** 2 }.inject:+
}.min