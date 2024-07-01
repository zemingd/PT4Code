$<.each{|line|
  n = line.to_i
  ret = 0
  10.times{|a|
    10.times{|b|
      10.times{|c|
        10.times{|d|
          next if n != a + b + c + d
          ret+=1
          break
        }
      }
    }
  }
  puts ret  
}