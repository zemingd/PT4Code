k = gets.to_f
a, b = gets.split.map(&:to_i)
c = (a / k).ceil
d = (b / k).floor
puts d - c >= 0 ? "OK" : "NG"
