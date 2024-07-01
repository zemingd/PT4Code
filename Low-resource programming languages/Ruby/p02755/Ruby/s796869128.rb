a,b = gets.split.map(&:to_i)

a_min = ((a.to_f / 8.0).to_f * 100).round
a_max = (((a.to_f + 0.9) / 8.0).to_f * 100).round
b_max = ((b + 0.9) * 10).round
b_min = b * 10

eight = (a_min..a_max).to_a
ten = (b_min..b_max).to_a

if (eight & ten).size == 0
  puts -1
else
  puts (eight & ten).min
end