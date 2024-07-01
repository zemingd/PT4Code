n, y = gets.split.map(&:to_i)
(0..n).each do |i|
  tmp = y / 1000 - n - 4 * i
  break if tmp < 0 || 10 * n - y / 1000 - 5 * i < 0

  if tmp % 9 == 0
    puts [tmp / 9, i, n - i - tmp / 9].join(' ')
    exit
  end
end
puts '-1 -1 -1'