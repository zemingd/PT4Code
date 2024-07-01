n = gets.to_i
a = gets.split().map(&:to_i)
b = gets.split().map(&:to_i)

c = 0
(0..n-1).each do |i|
  if b[i] >= a[i]
    c += a[i]
    b[i] -= a[i]
    if b[i] >= a[i+1]
      c += a[i+1]
      a[i+1] = 0
    else
      c += b[i]
      a[i+1] -= b[i]
    end
  else
    c += b[i]
  end
end

puts c