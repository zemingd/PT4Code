require 'prime'

a, b = gets.split.map(&:to_i)
h = a.prime_division.to_h
g = b.prime_division.to_h
cnt = 1
h.each do |k, _|
  cnt += 1 if g.key?(k)
end
puts cnt