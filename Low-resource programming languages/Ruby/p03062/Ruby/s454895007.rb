N=gets.to_i
a=gets.split.map(&:to_i)
cnt_minus = 0
N.times do |i|
  cnt_minus += 1 if a[i] < 0
end
if cnt_minus.even?
  puts a.map(&:abs).inject(&:+)
else
  a_min = a.map(&:abs).min
  puts a.map(&:abs).inject(&:+) - 2*a_min
end