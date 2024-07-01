n = gets.to_i
p = gets.split().map(&:to_i)

sum = 0

(1..n-2).each do |i|
  array = [p[i-1], p[i], p[i+1]]
  sum += 1 if array.sort[1] == array[1]
end

puts sum