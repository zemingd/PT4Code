_n = gets.to_i
xs = gets.split.map(&:to_i)

m = (100**2) * 100
(1..100).each do |i|
  j = xs.map { |x| (x - i)**2 }.inject(&:+)
  if m <= j
    break
  end
  m = j
end
puts m
