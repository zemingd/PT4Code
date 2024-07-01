N = gets.to_i
A = gets.split.map(&:to_i)

cnt = 0
allp = 0
min = 10000000000
A.each do |a|
  cnt += 1 if a < 0
  allp += a.abs
  min = a.abs if a.abs < min
end

if cnt.even?
  puts allp
else
  puts allp - min - min
end