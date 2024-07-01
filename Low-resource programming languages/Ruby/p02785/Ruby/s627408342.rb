n, k = gets.chop.split.map(&:to_i)
arr = gets.chop.split.map(&:to_i).sort.reverse

if n <= k
  print 0
else
  arr.slice!(0, k)
  print arr.inject(:+)
end