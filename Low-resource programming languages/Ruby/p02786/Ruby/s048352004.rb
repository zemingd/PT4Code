h, n = gets.split.map(&:to_i)
a, b = n.times.map{gets.split.map(&:to_i)}.transpose
a, b = [a, b].transpose.map{|i| [i[0].fdiv(i[1]), i[0], i[1]]}.sort.reverse.transpose[1..2]
ac = h.fdiv(a[0]).ceil
c, d = ac * b[0], ac * a[0]
l = 0
n.times do |i|
  ac = (h - d + a[l]).fdiv(a[i]).ceil
  if ac * b[i] < b[l]
    c, d = c - b[l] + ac * b[i], d - a[l] + ac * a[i]
    l = i
  end
end
puts c
