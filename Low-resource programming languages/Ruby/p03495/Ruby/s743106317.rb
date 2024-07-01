n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
count = Hash.new(0)
a.each do |i|
  count[i] += 1
end
b = count.values.sort
if b.size <= k
  p 0
else
  p b[0..b.size-(k+1)].inject(:+)
end