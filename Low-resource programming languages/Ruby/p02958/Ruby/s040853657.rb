def lscan; gets.split.map(&:to_i);end
n = lscan
a = gets.split.map(&:to_i)
sorted = a.sort

cnt = 0
(0..a.length - 1).each do |i|
  cnt += 1 if a[i] != sorted[i]
end

puts cnt <= 2 ? 'YES' : 'NO'