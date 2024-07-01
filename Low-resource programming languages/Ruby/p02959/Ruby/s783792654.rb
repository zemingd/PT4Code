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
      if b[i] >= a[i+1]
        e += a[i+1]
        a[i+1] = 0
      else
        e += b[i]
        a[i+1] -= b[i]
      end
    end
  else
    e += b[i]
  end
  r += e
end

puts r