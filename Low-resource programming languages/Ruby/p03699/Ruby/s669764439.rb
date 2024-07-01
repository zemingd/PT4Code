N = gets.to_i
s = N.times.map { gets.to_i }
sum = s.inject(:+)
if sum % 10 != 0
  p sum
  exit
end
s = s.reject { |i| i % 10 == 0 }
parts = []
s.each do |i|
  parts += [i] + parts.map { |j| i+j }
  parts.uniq!
end
m = parts.sort.find { |i| i % 10 != 0 }
p m.nil? ? 0 : sum - m
