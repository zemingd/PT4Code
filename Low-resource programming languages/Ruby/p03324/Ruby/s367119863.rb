a=200.times.select{|x| x%100!=0}
d,n=gets.split.map(&:to_i)
puts a[n] * (100**d)