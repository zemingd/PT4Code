n = gets
s = gets.split.map(&:to_i)
result = []
t = 1
s.each do |a|
  result.push(a) if t < a
  t += 1
end
puts result.length < 2 ? 'YES' : 'NO'