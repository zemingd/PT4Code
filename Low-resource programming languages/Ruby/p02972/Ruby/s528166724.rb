# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
a.unshift(-1)

b = []

(n/2 + 1).upto(n) do |i|
  b[i] = a[i]
end

loop do
  n /= 2
  (n/2 + 1).upto(n) do |i|
    b[i] = a[i] ^ b[i * 2]
  end
  break if n/2 == 0
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
