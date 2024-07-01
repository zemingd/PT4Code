n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

count = 0
(0...n).each do |i|
  if a[i] >= b[i] 
    count += b[i]
  elsif a[i] + a[i+1] >= b[i]
    count += b[i]
    a[i+1] -= b[i]-a[i]
  else
    count += a[i]+a[i+1]
    a[i+1] = 0
  end
end

puts count