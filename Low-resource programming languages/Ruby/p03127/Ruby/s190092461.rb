gets
m = gets.split.map(&:to_i)

m.uniq!
m.reject! { |l| l != m.min && (l % m.min).zero? }

while m.size > 1
  $stderr.puts m.inspect
  max0, max1 = m.max(2)
  times = (max0 - max1) / m.min
  times = 1 if times.zero?
  m[m.index(max0)] = max0 - times * m.min
  m.uniq!
  m.reject!(&:zero?)
end

$stderr.puts m.inspect
puts m.first.to_i
