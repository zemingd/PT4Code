n = STDIN.gets.chomp.to_i

transportation = []

5.times do
  transportation  << STDIN.gets.chomp.to_i
end

min_index = transportation.rindex(transportation.min)

counter = 0

counter = n / transportation[min_index]
if n % transportation[min_index]
  counter += 1
end

puts counter+transportation.length-1
