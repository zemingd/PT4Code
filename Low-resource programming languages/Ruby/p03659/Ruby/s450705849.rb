n    = gets.to_i
ary  = gets.split.map(&:to_i)

cntS = ary[0]
cntA = ary.inject(:+) - ary[0]
ans  = (cntS - cntA).abs

for i in 1 .. n - 2
  cntS += ary[i]
  cntA -= ary[i]
  ans   = [ans, (cntS - cntA).abs].min
end

puts ans
