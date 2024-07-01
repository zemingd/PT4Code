ans = Array.new(10**4+1, 0)
(1..100).each{|i|
  (1..100).each{|j|
    (1..100).each{|k|
      wk = i**2 + j**2 + k**2 + i*j + j*k + k*i
      ans[wk] += 1 if wk <= 10**4
    }
  }
}

puts ans[1, gets.to_i]*?\n
