n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
n.times{|x|
  n.times{|y|
    ans += a[x]*a[y] if x!=y
  }
}

p ans/2
