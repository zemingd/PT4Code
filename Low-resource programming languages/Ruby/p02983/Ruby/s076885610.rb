l, r = gets.split.map(&:to_i)
l %= 2019
r %= 2019
if l > r
  p 0
  return
end

r += 2019
min = 2018
(l..r-1).each do |i|
  (i+1..r).each do |j|
    a = i * j % 2019
    min = a if a < min
  end
end

p min