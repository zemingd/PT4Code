a, b, c, d, e, f = gets.split.map(&:to_i)

s = []
w = []

50.times do |i|
  50.times do |j|
    tmpw = (a * i + b * j) * 100
    w.push tmpw if tmpw < f && tmpw > 0
    tmps = c * i + d * j
    s.push tmps if tmps < f
  end
end

max_pr = suma = sums = 0

w.each do |i|
  s.each do |j|
    next unless i + j <= f
    pr = j.to_f / (i + j) # 濃度
    next unless pr > max_pr && j <= e / 100.0 * i
    max_pr = pr
    suma = i + j
    sums = j
  end
end

suma = a * 100 if suma.zero?
printf("%d %d\n", suma, sums)