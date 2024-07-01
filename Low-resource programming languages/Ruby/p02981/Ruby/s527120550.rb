a=gets.chomp.split.map(&:to_i)
tax=a[0]*a[1]
puts tax<a[2] ? tax : a[2]