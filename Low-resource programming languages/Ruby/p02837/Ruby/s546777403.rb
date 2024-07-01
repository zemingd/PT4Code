n = gets.to_i
pr = []
n.times do
  a = gets.to_i
  hs = Hash.new
  a.times do
    x, y = gets.chomp.split.map(&:to_i)
    hs[x - 1] = y
  end
  pr.push(hs)
end

res = 0
(2 ** n - 1).step(0, -1) do |b|
  ok = true
  0.step(n - 1) do |i|
    if b & (1 << i) == 0
      next
    end

    pr[i].each do |x, y|
      if b & (1 << x) != (y << x)
        ok = false
        break
      end
    end

    if !ok
      break
    end
  end
  
  if ok
    cnt = ("%b" % [b]).count("1")
    res = cnt if cnt > res
  end
end
puts res