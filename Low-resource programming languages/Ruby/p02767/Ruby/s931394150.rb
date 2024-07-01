n = gets.to_i
x = gets.split.map(&:to_i)
result = []
p = x.min
while x.max >= p 
  power = 0
  x.each do |a|
    power += (a - p)**2     
  end
  result << power
  p += 1
end

puts result.min