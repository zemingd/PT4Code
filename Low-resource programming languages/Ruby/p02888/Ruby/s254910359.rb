n=gets.to_i
l=gets.split.map(&:to_i).sort

p (2...n).inject(0){|s,i|
  (1...i).inject(s){|t,j|
    min_k = l[i]-l[j]
    t + j - ((0...j).bsearch{|k| min_k < l[k]} || j)
  }
}