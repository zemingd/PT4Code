l, r = gets.split.map(&:to_i)
a = (l..r).map{_1 % 2019}.sort
puts a[0] * a[1]