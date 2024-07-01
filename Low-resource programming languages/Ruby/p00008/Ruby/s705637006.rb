x = Array.new(51, 0)
i = j = k = l = 10
i.times{ |i|
  j.times{ |j|
    k.times{ |k|
      l.times{ |l|
        x[i+j+k+l] += 1 
      }
    }
  }
}

while n = gets.to_i
  puts x[n]
end