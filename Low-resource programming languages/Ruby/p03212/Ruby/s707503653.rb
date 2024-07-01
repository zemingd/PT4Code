@cache = {}
def c(n)
  return %w[357 375 537 573 735 753] if n == 3
  @cache[n] ||= n.times.map { |i| %w[3 5 7].map { |x| c(n - 1).map { |y| y.dup.insert(i, x) } } }.flatten.uniq
end

N = gets.chomp.to_i
count = 0
(3..(N.to_s.size)).each do |size|
  count += c(size).reject { |x| x.to_i > N }.size
end
puts count