n,k = gets.split.map(&:to_i)
a = gets.split.map{|a|a.to_i+1}

w = []
k.times{|i|
  w << a[i]
}
sum = w.inject(:+)
max = sum
(k...n).each{|i|
  sum -= w.shift
  w << a[i]
  sum += a[i]
  max = sum if max < sum
}
p max/2.0
