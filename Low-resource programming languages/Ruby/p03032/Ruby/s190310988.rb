n, k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)

m = [n, k].min
max = 0
m.times do |i|
  (m - i).times do |j|
    sum = 0
    w = []
    0.upto(i - 1) do |x|
      t = v[x]
      sum += t
      w.push t if t < 0
    end
    0.upto(j - 1) do |x|
      t = v[-1 - x]
      sum += t
      w.push t if t < 0
    end
    sw = w.sort
    limit = [sw.size, k - i - j].min
    sum -= sw[0..(limit - 1)].reduce(:+) unless sw.empty?
    max = sum if max < sum
  end
end
puts max
