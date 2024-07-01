n = gets.to_i
ary = gets.split(' ').map(&:to_i)
neg, s, mx = 0, 0, 0
mi = 10 ** 10
ary.each do |a|
  neg += 1 if a.negative?
  mx = [a.abs, mx].max
  mi = [a.abs, mi].min
  s += a.abs
end
puts neg.even? ? s : s - mi * 2