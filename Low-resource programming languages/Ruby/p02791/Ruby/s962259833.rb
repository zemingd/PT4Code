n = gets.to_i
p = gets.split.map(&:to_i)
ans = 1
[*1..n-1].each{|i|
  flag = true
  [*0..i-1].each{|j|
    if p[i] > p[j]
      flag = false
      break
    end
  }
  ans += 1 if flag
}
p ans
