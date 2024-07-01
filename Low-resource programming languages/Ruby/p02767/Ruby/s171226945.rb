n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
sum = 0
arr.each do |elem|
  sum += elem
end
point = (sum / n) + 1
s = 0
arr.each do |elem|
  s += (elem - point).abs ** 2
end
puts s
