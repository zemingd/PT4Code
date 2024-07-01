H, W = gets.split.map(&:to_i)

k, m, r = Array.new(W, 0), Array.new(W, 0), 0
dot = '.'
H.times do
  l = 0
  s = gets.chomp
  (0 ... W).each do |j|
    if s[j] == dot
      if l == 0
        t = j + 1
        while t < W && s[t] == dot
          t += 1
        end
        l = t - j
      end
      k[j] += 1
      m[j] = l if l > m[j]
    else
      x = k[j] + m[j]
      r = x if x > r
      l = 0
      k[j] = 0
      m[j] = 0
    end
  end
end
(0 ... W).each{|j| x = k[j] + m[j]; r = x if x > r}
puts r - 1
