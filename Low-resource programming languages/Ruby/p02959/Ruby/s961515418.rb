n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
r = 0

n.times do |i|
  e = 0
  if b[i] > a[i]
    e += a[i]
    b[i] -= a[i]
    if b[i] > 0
      e += b[i]
      a[i+1] -= b[i]
    end
  else
    e += b[i]
  end
  r += e
end

puts r