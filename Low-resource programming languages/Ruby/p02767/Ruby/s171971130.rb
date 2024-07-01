_ = gets.chop.to_i
arr = gets.chop.split.map(&:to_i)
avr = (arr.inject(:+) / arr.length).to_i
avr2 = (arr.inject(:+) / arr.length).to_i + 1
avr3 = (arr.inject(:+) / arr.length).to_i - 1
res1 = 0
res2 = 0
res3 = 0
for n in arr
  res1 += (n - avr) * (n - avr)
  res2 += (n - avr2) * (n - avr2)
  res3 += (n - avr3) * (n - avr3)
end
puts [res1, res2, res3].min