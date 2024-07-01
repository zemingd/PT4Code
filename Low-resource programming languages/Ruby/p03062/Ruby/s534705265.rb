a = gets.to_i
b = gets.split.map(&:to_i)
co = 0
sum = 0
b.each do |e|
  co += 1 if e.zero? || e.negative?
  sum += e.abs
end

sum -= 2 * b.map(&:abs).sort[0] if co.odd?

p sum