a,b = gets.chomp.split(' ').map(&:to_i)
s = []

if a >= b
  a.times do
    s.push(1)
  end
  puts s.join.to_i * b
else
  b.times do
    s.push(1)
  end
  puts s.join.to_i * a
end