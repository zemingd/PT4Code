aryA = []
aryB = []

5.times do
  x = gets.to_i
  if x % 10 == 0
    aryA << x
  else
    aryB << x
  end
end

aryB = aryB.sort{|a| a % 10}.reverse

if aryA.size > 0
  ans = aryA.inject(:+)
else
  ans = 0
end

if aryB.size > 0
  (aryB.size - 1).times do |i|
    if aryB[i] > 9
      ans += ((aryB[i] / 10.0).ceil) * 10
    else
      ans += 10
    end
  end
end

puts ans + aryB[-1]
