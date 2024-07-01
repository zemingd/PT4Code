n=gets.to_i
l=gets.split.map(&:to_i).sort
cnt = 0
(0...n-2).each{|i|
  (i+1...n-1).each{|j|
    (j+1...n).each{|k|
      if l[i]+l[j] > l[k]
        cnt += 1
      else
        break
      end
    }
  }
}
p cnt 
