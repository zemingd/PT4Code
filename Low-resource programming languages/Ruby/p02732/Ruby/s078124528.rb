n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)
ans = 0
a.each{|x|
  ans += h[x]
  h[x] += 1
}

a.each{|x|
  p ans-h[x]+1
}
