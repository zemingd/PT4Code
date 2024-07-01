n = gets.chop.to_i
a = gets.split.map(&:to_i)

cnt = 0
n.times do |i|
  if a[i] < 0
    cnt += 1
  end
end

s = a.map do |i| i.abs end
if cnt%2 != 0
  s.min
  ans = s.inject(:+) - (s.min*2)
  puts ans
else
  ans = s.inject(:+)
  puts ans
end
