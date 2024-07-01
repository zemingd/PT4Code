tbl = Array.new(51){0}
10.times{|i|
  10.times{|j|
    10.times{|k|
      10.times{|l|
        tbl[i+j+k+l] += 1
      }
    }
  }
}

while n = gets
  puts tbl[n.to_i]
end