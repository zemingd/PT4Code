N, K = gets.split.take(2).map(&:to_i)
Ops = N.times.map{gets.split.take(2).map(&:to_i)}
# p Ops.each_with_object([]){|(a, b), r|
#   r << [a]*b
# }.flatten.sort[K-1]
p Ops.sort_by{|a,b| a}.inject(K){|r, (a,b)|
  # p [r, a,b]
  r -= b
  break a if r <= 0
  r
}
