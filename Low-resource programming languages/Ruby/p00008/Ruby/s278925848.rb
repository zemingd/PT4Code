while n = gets do
  n = n.to_i
  c = 0
  10.times{|i|
    10.times{|j|
      10.times{|k|
        10.times{|l|
          c = c + 1 if i + j + k + l == n
        }
      }
    }
  }
  puts c
end