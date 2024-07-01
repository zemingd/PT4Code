require 'prime'

n = gets.to_i
if n == 1
  puts 1
else
  h = Prime.prime_division(n).to_h
  p = []
  h.each do |k, v|
    while v > 0
      p << k
      v -= 1
    end
  end
  min = Float::INFINITY
  0.upto(2 ** p.size - 1) do |bit|
    a = 1
    b = 1
    p.size.times do |i|
      if bit[i] == 0
        a *= p[i]
      else
        b *= p[i]
      end
    end
    min = [a.to_s.size, b.to_s.size].max if min > [a.to_s.size, b.to_s.size].max
  end
  puts min
end