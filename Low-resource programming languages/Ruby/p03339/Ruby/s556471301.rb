def solve(s)
  len = s.length
  ar = []
  0.upto(len-1){|i|
    # leader
    res = 0
    0.upto(i-1){|j|
      if s[j] == ?W
        res+=1
      end
    }

    (i+1).upto(len-1){|j|
      if s[j] == ?E
        res+=1
      end
    }
    ar.push res
  }
  ar.min
end

gets
p solve gets
