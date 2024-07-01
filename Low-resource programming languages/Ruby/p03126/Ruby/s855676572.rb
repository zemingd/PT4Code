P, F = gets.split(' ').map(&:to_i)
arr = []
P.times { arr << gets.split(' ').map(&:to_i) }

default = arr[0][1..-1]

(1..P-1).each do |i|
  default &= arr[i][1..-1]
end

puts default.size