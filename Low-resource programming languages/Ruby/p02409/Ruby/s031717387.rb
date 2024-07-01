n = gets.to_i
a = Array.new(4){Array.new(3){Array.new(10, 0)}}
n.times{
  b, f, r, v = gets.split.map &:to_i
  a[b-1][f-1][r-1] += v
}
a.each_with_index{|e, i|
  e.each{|r| puts ' ' + r.join(' ')}
  puts '#' * 20 unless i == 3
}