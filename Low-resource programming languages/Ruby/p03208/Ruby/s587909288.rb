n,k=gets.chomp.split.map(&:to_i)
ar=n.times.map{gets.to_i}.sort_by{|i|-i}.take(k)
puts ar[-1]-ar[0]