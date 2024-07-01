n=gets.to_i
l=gets.split.map(&:to_i).sort

p (0...n-2).map{|i|
  (i+1...n-1).map{|j|
    ((j+1...n).bsearch{|k| l[i]+l[j] <= l[k]} || n) - (j+1)
  }.inject(:+)
}.inject(:+)
