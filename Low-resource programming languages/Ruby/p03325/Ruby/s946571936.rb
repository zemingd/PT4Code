n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
a.map{|t|
  while t>0 && t%2==0
    ans += 1
    t /= 2
  end
}

p ans