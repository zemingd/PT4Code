s = gets.split('')
l = []

s.each do |c|
  c == 'B' ? l.pop : l.push(c)
end

puts l.join