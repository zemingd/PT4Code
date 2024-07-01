pattern = Array.new(51,0)

10.times{|a|
  10.times{|b|
    10.times{|c|
      10.times{|d|
        pattern[a+b+c+d] += 1
      }
    }
  }
}

while sum = gets.to_i
 puts pattern[sum]
end