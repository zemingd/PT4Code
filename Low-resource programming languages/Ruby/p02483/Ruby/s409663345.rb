a = gets.split.map(&:to_i)

a.sort.map{ |b| print b.to_s + ' ' }
puts