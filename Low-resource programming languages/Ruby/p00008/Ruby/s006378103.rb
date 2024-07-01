$<.each{|line|
  n = line.to_i
  ret = 0
  (0..9).each{|a|
    (0..9).each{|b|
      (0..9).each{|c|
        (0..9).each{|d|
          ret+=1 if n == a + b + c + d
        }
      }
    }
  }
  puts ret  
}