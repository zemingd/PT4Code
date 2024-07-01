k = gets.to_i
a, b = gets.split.map(&:to_i)
t = (a-1)/k+1
puts t*k <= b ? "OK" : "NG"
