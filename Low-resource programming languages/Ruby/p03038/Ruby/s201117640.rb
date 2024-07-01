n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
bc = m.times.map{gets.split.map(&:to_i)}.sort_by{|b,c|-c}
idx = 0
bc.each{|b, c|
  while idx <  n && a[idx] < c && b > 0
    a[idx] = c
    idx += 1
    b -= 1
  end
}
puts a.inject(:+)