while true
  line = gets
  break if line == nil
  n = line.to_i
  ans = 0
  10.times{|a|
    10.times{|b|
      10.times{|c|
        10.times{|d|
          ans += 1 if a+b+c+d == n
        }
      }
    }
  }
  p ans
end