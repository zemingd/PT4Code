def max(a, b)
  a > b ? a : b
end

N = gets.to_i
a = Array.new(N){[]}
N.times do |i|
  num = gets.to_i
  num.times do |j|
    x, y = gets.split.map(&:to_i)
    a[i] << [x-1, y]
  end
end

mask = 0
ans = 0
while mask < 2 ** N
  check = Array.new(N)
  pass = true
  N.times do |i|
    t = mask >> i & 1
    if t == 1
      if check[i].nil?
        check[i] = 1
      else
        if check[i] != 1
          pass = false
          break
        end
      end
    else
      if check[i].nil?
        check[i] = 0
      else
        if check[i] != 0
          pass = false
          break
        end
      end
    end
    a[i].each do |x, y|
      y = y^1 if t == 0
      if check[x].nil?
        check[x] = y
      else
        if check[x] == y
          next
        else
          pass = false
          break
        end
      end
    end

  end
  ans = max(ans, check.inject(:+)) if pass
  mask += 1
end

p ans