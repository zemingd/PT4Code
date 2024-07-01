N,L = gets.split.map(&:to_i)
t = N.times.map{|i| L+i}
p t.inject(:+) - t.min_by(&:abs)