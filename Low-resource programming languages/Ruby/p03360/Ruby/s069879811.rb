a=gets.split.map(&:to_i).sort
a[2]=a[2]*(2**gets.to_i)
puts a.inject(:+)