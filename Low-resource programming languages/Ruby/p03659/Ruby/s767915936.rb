gets
a = gets.split.map &:to_i
sum = a.inject :+
x = 0
p a[0...-1].map{ |_a|
  (sum - 2 * x+=_a).abs
}.min