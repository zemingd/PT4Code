n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
cnt = 0
n.times do |i|
  if a[i] <= b[i]
    cnt += a[i]
    b[i] -= a[i]
    a[i] = 0
    if a[i+1] <= b[i]
      cnt += a[i+1]
      a[i+1] = 0
    else
      cnt += b[i]
      a[i+1] -= b[i]
    end
  else
    cnt += b[i]
  end
end
puts cnt

