n = gets.to_i
arr = gets.split(' ').map(&:to_i)

sum = 0

(0...n).each do |i|
  ((i+1)...n).each do |j|
  	sum += arr[i] * arr[j]
  end
end

puts sum