X, K, D = gets.split.map(&:to_i)

plus = X.abs
minus = 0

K.times do
  if plus - D <= 0
    minus = (plus - D)
    break
  else
    plus = (plus - D)
  end
end

if minus == 0
  puts plus
else
  puts [plus, minus.abs].min
end