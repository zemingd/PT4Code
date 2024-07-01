n,l = gets.split.map(&:to_i)
ans = 500
l -= 1
ar = []
y = nil
1.upto(n){|i|
  x = i+l
  ar << x
  if (x.abs) < ans
    ans = x.abs
    y = x
  end
}
if y < 0
  ans *= -1
end
puts ar.inject(:+) - ans