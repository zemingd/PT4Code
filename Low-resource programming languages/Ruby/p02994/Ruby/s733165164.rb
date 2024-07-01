N, L = gets.split(" ").map(&:to_i)
# S = gets.chomp
# N = gets.to_i

arr = []
sum = 0
absmin = 99999
min = absmin
N.times do |i|
  v = L + i
  sum += v
  abs = v.abs
  if abs < absmin
    absmin = abs
    min = v
  end
end

# p [sum, min]
puts sum - min
