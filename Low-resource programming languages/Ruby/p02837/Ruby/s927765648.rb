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
while mask < 2 ** (N+1)
  check = Array.new(N)
  pass = true
  a.each do |i, j, k|
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
      k = k ^ 1
    end

    if check[j].nil?
      check[j] = k
    else
      if check[j] == k
        next
      else
        pass = false
        break
      end
    end
  end

  if pass  
    ans = max(ans, check.inject(:+)) if pass
  end
  mask += 1
end

p ans