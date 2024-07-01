a = gets.split.map{|x| x.to_i}
mx = a.max
print 9*mx + a.inject(:+)
