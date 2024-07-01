n = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
result = 0
zantei = 1000000
n.times do |i|
  if zantei > (a - (t-h[i]*0.006)).abs
    zantei = (a - (t-h[i]*0.006)).abs 
    result = i
  end
end
puts result + 1
