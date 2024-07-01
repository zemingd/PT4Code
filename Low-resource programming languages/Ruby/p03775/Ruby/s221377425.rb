#!/usr/bin/env ruby
n = gets.chomp.to_i

i = 1
ans = Float::INFINITY

while i * i <= n
  d, m = n.divmod(i)

  if m == 0
    ans = [ans, [i.to_s.length, d.to_s.length].max].min
  end

  i += 1
end

puts ans
