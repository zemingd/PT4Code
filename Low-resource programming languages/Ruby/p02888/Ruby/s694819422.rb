n=gets.to_i
l=gets.split.map(&:to_i).sort

p (0...n-2).inject(0){|s,i|
  (i+1...n-1).inject(s){|t,j|
    t + ((j+1...n).bsearch{|k| l[i]+l[j] <= l[k]} || n) - (j+1)
  }
}
