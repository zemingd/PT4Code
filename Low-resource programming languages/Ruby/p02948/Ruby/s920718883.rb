n,m = gets.split.map(&:to_i)
h = Hash.new{[0]}
n.times {|a|
  a,b = gets.split.map(&:to_i)
  (h[a]=h[a]) << b  if a <= m
}
h.values.each {|v| v.sort!}
a = Array.new(m)
1.upto(m) {|i|
  x = i
  i.downto(1) {|j|
    x = j  if h[j][-1] > h[x][-1]
  }
  a[-i] = h[x].pop
}
p a.inject(&:+)