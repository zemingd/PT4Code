n=gets
l=gets.split.map(&:to_i).sort
cnt = 0
(0...n-2).each{|i|
  (i...n-1).each{|j|
    (j...n).each{|k|
      if i < j+k
        cnt += 1
      else
        break
      end
    }
  }
}
p cnt 
