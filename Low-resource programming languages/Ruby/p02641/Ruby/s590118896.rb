x,n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
h = {}
a.each{|i| h[i] = true}

dif = 100
ans = 0
101.times{|i|
  if !h[i] && dif > (x-i).abs
    ans = i
    dif = (x-i).abs
  end
}

p ans
