a, b = gets.split.map(&:to_i)

n = b * 10

while n.to_f * 0.08 < a
  n += 1
end

if((n.to_f * 0.1).floor == b && (n.to_f * 0.08).floor == a)
  puts n
else
  puts -1
end