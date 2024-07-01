n=gets.to_i
l=gets.split.map(&:to_i).sort

cnt = 0
(2...n).each{|i|
  (1...i).each{|j|
    cnt += j - ((0...j).bsearch{|k| l[i] < l[j] + l[k]} || j)
  }
}
p cnt