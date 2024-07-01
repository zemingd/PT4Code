# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
a.unshift(-1)

b = []
d = []
(n/2 + 1).upto(n) do |i|
  d[i] = b[i] = a[i]
end

(n/2).downto(1) do |i|
  count = 0
  j = i
  loop do
    count += a[j]
    j += i
    break if j > n
  end
  b[i] = count % 2
end
c = []
count = 0
1.upto(n) do |i|
  if b[i].positive?
    c.push i
    count += 1
  end
end
puts count
if count.zero?
  puts 0
else
  puts c.join(' ')
end
