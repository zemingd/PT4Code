gets.to_i
a=gets.split.map(&:to_i)
m=a.inject(:*)-1
puts a.map{|ai|m%ai}.inject(:+)
