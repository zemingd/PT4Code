n = gets.to_i
a = gets.split.map(&:to_i)
suma = 0
a.each do |i|
  suma += i
end
min = 1e10
tmp = 0
(n-1).times do |i|
  tmp += a[i]
  if min > (suma-2*tmp).abs
    min = (suma-2*tmp).abs
  end
end
puts min
