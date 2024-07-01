h, n = gets.chop.split.map(&:to_i)
arr = gets.chop.split.map(&:to_i)

if h-(arr.inject(:+)) <= 0
  print `Yes`
else
  print `No`
end