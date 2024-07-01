n, k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)

m = [n, k].min
max = 0
0.upto(m) do |i|
  0.upto(m - i) do |j|
    sum = 0
    w = []
    i.times do |x|
      t = v[x]
      sum += t
      w.push t if t < 0
    end
    j.times do |x|
      t = v[-1 - x]
      sum += t
      w.push t if t < 0
    end
    sw = w.sort
    limit = [sw.size, k - i - j].min
    sum -= sw[0..(limit - 1)].reduce(:+) if !sw.empty? && limit > 0
    if max < sum
      max = sum
    end
  end
end
puts max
