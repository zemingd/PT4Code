n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
cnt = 0

n.times do |i|
  if a[i]+a[i+1] >= b[i]
    cnt += b[i]
    if a[i] < b[i]
      a[i+1] -= b[i] - a[i]
    end
      
  else
    cnt += a[i]+a[i+1]
    a[i+1] = 0
  end
end

puts cnt
