n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
r = 0

n.times do |i|
  e = 0
  if a[i] <= b[i]
    e += b[i]
    if (a[i] - e) > 0 && (a[i] - e) <= b[i+1]
      e += (a[i] - e)
      b[i+1] -= (a[i] - e)
    end
  else
    e += a[i]
  end
  r += e
end

puts r