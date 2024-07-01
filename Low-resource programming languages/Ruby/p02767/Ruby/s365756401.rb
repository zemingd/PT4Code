# ARC059_C
N = gets.to_i
A = gets.split.map(&:to_i)

min = (200**2)*100
(-100..100).each do |i|
  v = A.map{ |a| (a-i)**2 }.inject(:+)
  min = v if min > v
end

puts min