n = gets.to_i
a = (1..n).map{|i|
  s, k = gets.split
  [s, -k.to_i, i]
  }.sort
a.map {|_,_,i| puts i}