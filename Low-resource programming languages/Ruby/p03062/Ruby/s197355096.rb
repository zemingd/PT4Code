def sum(ar) ar.inject(:+) end

N = gets.to_i
as = gets.split.map(&:to_i)

aabs = as.map{|m|m.abs}.sort

b = as.count{|x|x<0}%2==1 ? aabs.shift : 0

puts sum(aabs) - b