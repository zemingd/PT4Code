n = gets.to_i
a = gets.split.map(&:to_i)
s = Array.new
a.each_with_index do |n, i|
  s[i] = n - i - 1
end
x = 0
s = s.sort
b = s[n/2]
s.each do |n|
  x += (n - b).abs
end

p x