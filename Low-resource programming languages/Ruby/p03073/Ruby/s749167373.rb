e = []
o = []
gets.chop.split('').each_with_index{ |n, i|
  (i%2 == 0 ? e : o) << n.to_i
}
e1 = e.inject(:+)
o1 = o.inject(:+)
p o1 ? [e1 + o.size - o1, o1 + e.size - e1].min : 0
