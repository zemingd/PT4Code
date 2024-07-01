def max(a, b)
  a > b ? a : b
end

N = gets.to_i
a = []
N.times do |i|
  num = gets.to_i
  num.times do |j|
    x, y = gets.split.map(&:to_i)
    a << [i, x-1, y]
  end
end

mask = 0
ans = 0
while mask < 2 ** N
  check = Array.new(N)
  N.times do |i|
    check[i] = mask >> i & 1
  end
  pass = true
  a.each do |i, x, y|
    next if check[i] == 0
    if check[x] == y
      next
    else
      pass = false
      break
    end
  end
  mask += 1

  if pass
    check.compact!
    next if check.empty?
    ans = max(ans, check.inject(:+))
  end
end

p ans