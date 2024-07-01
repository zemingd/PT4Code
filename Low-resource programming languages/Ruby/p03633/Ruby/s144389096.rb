N = gets.to_i
arr = N.times.map { gets.to_i }

result = arr.shift
arr.each do |i|
  result = result.lcm(i)
end
puts result