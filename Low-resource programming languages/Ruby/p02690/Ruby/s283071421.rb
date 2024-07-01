X=$stdin.read.chomp.to_i

a = (X.to_f**(1/5.to_f)).round
diff = (a**5) - X
if diff < 0
  b = -1 * ((-1*diff) ** (1/5.to_f)).round
else
  b = (diff ** (1/5.to_f)).round
end

oa = a
f = 1
until a**5 - b**5 == X
  a += f
  diff = X - a**5
  b = if diff < -1
    ((-1*diff) ** (1/5.to_f)).round
  else
    -1 * (diff ** (1/5.to_f)).round
  end
  if oa - a > 100
    a = oa
    f = -1
  end
end

puts "#{a} #{b}"