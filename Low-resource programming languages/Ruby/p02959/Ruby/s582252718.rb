n = gets.to_i
a = gets.strip.split(' ').map(&:to_i)
b = gets.strip.split(' ').map(&:to_i)
result = 0
n.times do |i|
  if a[i] < b[i]
    result += a[i]
    b[i] -= a[i]
    a[i] = 0
    if a[i+1] < b[i]
      result += a[i+1]
      a[i+1] = 0
    else
      result += b[i]
      a[i+1] -= b[i]
    end
  else
    result += b[i]
    a[i] -= b[i]
  end
end
puts result
