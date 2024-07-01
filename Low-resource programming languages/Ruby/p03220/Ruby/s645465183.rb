n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
num = 0
min = 9999999999.0
for i in 0..(n-1)
  d = (a - (t - h[i] * 0.006)).abs
  if min > d
    num = i
    min = d
  end
end
puts num + 1