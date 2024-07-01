require 'prime'

n = gets.to_i
if n == 1
  puts 1
else
  p = n.prime_division.map{ |p, k| [p] * k }.flatten
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
    if a >= b
      min = a if min > a
    else
      min = b if min > b
    end
  end
  puts min.to_s.size
end