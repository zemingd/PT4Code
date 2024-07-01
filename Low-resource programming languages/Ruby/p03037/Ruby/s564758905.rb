N, M = gets.split.map(&:to_i)
L = []
R = []
M.times do
  line = gets.split.map(&:to_i)
  L << line.shift
  R << line.shift
end

num =  R.min - L.max+ 1
if num > 0
  p num
else
  p 0
end