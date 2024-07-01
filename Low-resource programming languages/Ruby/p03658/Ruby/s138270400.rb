n,k=gets.split.map(&:to_i)
l = n.times.map{gets.to_i}.sort.reverse[0..k-1]
puts l.inject(:+)


  