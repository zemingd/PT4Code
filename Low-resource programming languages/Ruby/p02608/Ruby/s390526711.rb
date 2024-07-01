ans = Array.new(10**4+1, 0)
(1..100).each{|i|
  (1..100).each{|j|
    (1..100).each{|k|
      sum = i**2 + j**2 + k**2 + i*j + j*k + k*i
      ans[sum] += 1 if sum <= 10**4
    }
  }
}

puts ans[1, gets.to_i]
