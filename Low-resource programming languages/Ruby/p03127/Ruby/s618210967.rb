gets
m = gets.split.map(&:to_i)

m.uniq!

while m.size > 1
  p m
  if m.size > 3
ms = m.min(m.size / 2)
m.reject! { |l| l != m.min && ms.any? { |s| (l % s).zero? } }
  end
  p m
  break if m.size < 2
m[m.index(m.max)] = m.max % m.min
  m.reject!(&:zero?)
  m.uniq!
end

puts m.first.to_i
