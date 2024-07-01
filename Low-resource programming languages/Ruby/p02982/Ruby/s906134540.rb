require 'matrix'

N, D = gets.split.map(&:to_i)

x = N.times.map { gets.split.map(&:to_i) }

ans = 0

N.times do |i|
  N.times do |j|
    next unless i <  j
    d = ( Vector.elements(x[i]) - Vector.elements(x[j]) )
    t = d.map{ |i|  i**2 }.inject(:+)
    ans += 1 if 0 == t - (Math.sqrt(t).floor ) ** 2
  end
end

puts ans