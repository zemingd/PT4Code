_n = gets
a = gets.split.map(&:to_i)
puts a.inject(a[0]) { |res, num|
  if res >= num
    l, s = res, num
  else
    l, s = num, res
  end
  loop do
    l, s = s, l % s
    break if s == 0
  end
  res = l
}