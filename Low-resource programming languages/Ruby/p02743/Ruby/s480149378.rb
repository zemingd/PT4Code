a, b, c = gets.split.map(&:to_i)

(puts 'No'; exit) if 2 * (a * b + b * c + c * a) == a * a + b * b + c * c

if 4 * a * b < a * a + b * b + c * c + 2 * (a * b - b * c - c * a)
  puts 'Yes'
else
  puts 'No'
end