N = gets.to_i
X = gets.split.map(&:to_i)

Y = X.sort[N/2-1, 2]
X.each {|x| puts x < Y[1] ? Y[1] : Y[0] }
