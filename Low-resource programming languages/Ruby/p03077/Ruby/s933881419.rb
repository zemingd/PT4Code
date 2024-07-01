n = gets.to_i

transportations = 5.times.map do
  gets.to_i
end

m = n / transportations.min

if n % transportations.min == 0
  puts m + 4
else
  puts m + 5
end
