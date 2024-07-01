n = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

cnt = 0
n.times do |i|
  if a[i] >= b[i]
    cnt += b[i]
  else
    cnt += a[i]
    e = b[i] - a[i]
    if e >= a[i+1]
      cnt += a[i+1]
      a[i+1] = 0
    else
      cnt += e
      a[i+1] -= e
    end
  end
end
p cnt