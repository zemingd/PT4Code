n,k=gets.chomp.split.map(&:to_i)
ar=n.times.map{gets.to_i}.sort.each_cons(2).map{|i,j|j-i}.sort.take(k-1)
puts ar.inject(:+)