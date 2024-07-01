n = gets.to_i
a = 5.times.map do
  gets.to_i
end
min = a.min
puts (((n-1) / min) + 1) + 4