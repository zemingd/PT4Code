n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
bc=m.times.map{gets.split.map(&:to_i)}.sort_by{|b,c|-c}
idx = 0
bc.each do |b,c|
  while a[idx] < c && b > 0 && idx < n
    a[idx] = c
    idx += 1
    b -= 1
  end
end
puts a.inject(:+)