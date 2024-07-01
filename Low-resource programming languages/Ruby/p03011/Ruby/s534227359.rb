p, q, r = gets.split.map(&:to_i)
arr = [p, q, r]
puts arr.permutation(2).to_a.map{|i| i.inject(:+)}.min