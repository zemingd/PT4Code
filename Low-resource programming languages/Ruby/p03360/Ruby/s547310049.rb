a=gets.split.map(&:to_i)
m=a.max
puts a.inject(:+)+m**gets.to_i-m