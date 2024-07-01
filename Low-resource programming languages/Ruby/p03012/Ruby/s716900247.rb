n = gets.to_i
a = gets.split.map(&:to_i)

b = a.inject(:+)
ans = b

sum = 0
a.each{|x|
  sum += x
  b -= x
  tmp = (sum-b).abs
  ans = tmp  if ans > tmp
}

p ans

