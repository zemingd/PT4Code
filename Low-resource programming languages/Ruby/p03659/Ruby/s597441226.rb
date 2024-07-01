n = gets.to_i
a = gets.split.map(&:to_i)
sum_s = 0
sum_a = a.inject :+
res = a[0...-1].map{|x|
  sum_s += x
  sum_a -= x
  (sum_s - sum_a).abs
}
p res.min