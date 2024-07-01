H, W = gets.split.map(&:to_i)
Ss = readlines.map{|l| l.split('')}

k, m, r = Array.new(W, 0), Array.new(W, 0), 0
(0 ... H).each do |i|
  l = 0
  (0 ... W).each do |j|
    if Ss[i][j] == '.'
      if l == 0
        t = j + 1
        while t < W && Ss[i][t] == '.'
          t += 1
        end
        l = t - j
      end
      k[j] += 1
      m[j] = [m[j], l].max
    else
      r = [r, k[j] + m[j]].max
      l = 0
      k[j] = 0
      m[j] = 0
    end
  end
end
(0 ... W).each{|j| r = [r, k[j] + m[j]].max}
puts r - 1