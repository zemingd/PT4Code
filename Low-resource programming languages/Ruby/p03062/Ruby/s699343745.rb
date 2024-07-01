n = gets.to_i
a = gets.split.map(&:to_i)

if a.select { |x| x < 0 }.size.even?
  puts a.map(&:abs).reduce(&:+)
else
  min_abs = a.map(&:abs).min
  puts a.map(&:abs).reduce(&:+) - 2 * min_abs
end