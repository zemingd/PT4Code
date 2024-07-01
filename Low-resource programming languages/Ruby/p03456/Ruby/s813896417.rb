# frozen_string_literal: true

a,b = gets.split.map(&:to_i)
if 10 <= b && b < 100
    a *= 100
end
if b == 100
    a *= 1000
end
if b <= 9
    a *= 10
end
c = a + b
d = 0
i = 1
320.times do
  if c / i == i && c % i == 0
  d = 1
  break
  end
  i += 1
end
if d == 0
puts 'No'
end
if d != 0
puts 'Yes'
end
