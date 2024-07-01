# after listening explanation
n = gets.to_i
c = Array.new
n.times{ c << Array.new(10, 0) }
n.times{|k|
  c[((k+1).to_s)[0].to_i][(k+1)%10] += 1
}
ans = 0
n.times{|k|
  ans += c[(k+1)%10][((k+1).to_s)[0].to_i]
}
p ans
