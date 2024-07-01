N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).uniq

require "prime"
B = A.map do |v|
  (v/2).prime_division.inject({}) do |a,e|
    a.update(e[0] => e[1])
    # a.concat(Array.new(e[1], e[0]))
  end
end

h = {}
B.each do |b|
  b.each do |k,v|
    h[k] = v if !h.key?(k) || h[k] < v
  end
end
mul = 1
h.each do |k,v|
  mul *= k**v
end

max_m = M / mul
if max_m % 2 == 0
  puts max_m / 2
else
  puts max_m / 2 + 1
end
