require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)
b = Array.new(n)
(n-1).downto(0) do |i|
  sum = 0
  a.size.times do |ii|
    sum += a[ii] if (ii+1) % (i+1) == 0
  end
  b[i] = sum % 2
end
p b.count(1)
puts b.map.with_index(1){|bb,i|bb == 1 ? "#{i} " : ''}.join.chop
