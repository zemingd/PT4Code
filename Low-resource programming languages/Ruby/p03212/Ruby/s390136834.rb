n = gets.to_i
puts (3..(n.to_s.size)).
  map{|l|
    [7,5,3].repeated_permutation(l).
      select{|arr| arr.uniq.size == 3}.
      map{|arr|arr.inject{|x,y|x*10+y}}.
      select{|x|x<=n}.size
    }.inject(:+)