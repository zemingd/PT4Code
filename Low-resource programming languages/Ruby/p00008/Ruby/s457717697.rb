sums = {}
(0..9).each do |a|
  (0..9).each do |b|
    sums[a+b] = sums[a+b] ? sums[a+b] + 1 : 1
  end
end

while line = gets
  n = line.to_i
  count = 0

  sums.each do |sum, c|
    remain = n - sum
    count += (c * sums[remain]) if sums.key?(remain)
  end

  puts count
end