k=gets.to_i
a,b=gets.split.map(&:to_i)
puts  (b/k)*k>=a ? "OK" : "NG"