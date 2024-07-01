
while n = gets
  m=0
  10.times{|i|
    10.times{|j|
      10.times{|k|
        10.times{|l|
          if i+j+k+l==n.to_i
            m+=1
          end
        }
      }
    }
  }
  puts m
end

