n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

m = a[0...k].inject(:+)
mi = 0
sum = 0

(0..n - k).each do |i|
  if a[i...i + k].inject(:+) > m
    m = a[i...i + k].inject(:+)
    mi = i
  end
end

(0...k).each do |i|
  sum += ([*1..a[mi + i]].inject(:+)).to_f / a[mi + i]
end
puts sprintf("%.12f", sum)