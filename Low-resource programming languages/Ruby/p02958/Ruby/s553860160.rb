# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)

sp = p.sort

count = 0
0.upto(n - 1) do |i|
  count += 1 if p[i] != sp[i]
end

if count.zero? || count == 2
  puts 'YES'
else
  puts 'NO'
end
