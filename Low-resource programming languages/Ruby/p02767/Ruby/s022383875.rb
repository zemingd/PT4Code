N = gets.to_i
x = gets.split.map(&:to_i).sort
min = x[0]
max = x[N-1]

minimum = x.map{ |i| i**2 }.inject(0){ |r, i| r + i }
(min..max).each do |i|
  sum = 0
  x.each{ |e| sum += (e - i)**2 }
  minimum = sum if sum < minimum
end

puts minimum
