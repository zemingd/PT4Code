n,m = gets.split.map(&:to_i)

ab = m.times.map{a,b = gets.split.map(&:to_i)}.sort{|a,b|a[1]<=>b[1]}

ans = 0
prev = -1
ab.each{|(a,b)|
  if !prev.between?(a+1,b)
    ans += 1
    prev = b
  end
}

p ans