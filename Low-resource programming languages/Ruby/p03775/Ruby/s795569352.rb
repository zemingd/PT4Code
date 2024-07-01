require "prime"
N = gets.to_i
a = b = 1
N.prime_division.flat_map { |i,j| [i] * j }.reverse.each do |n|
  if a < b
    a *= n
  else
    b *= n
  end
end
p [a.to_s.length, b.to_s.length].max
