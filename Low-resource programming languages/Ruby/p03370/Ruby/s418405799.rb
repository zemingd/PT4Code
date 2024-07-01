n, x = gets.chomp.split(' ').map(&:to_i)
array = (1..n).map do |_|
  gets.to_i
end

min = array.min
xrest = x - array.reduce(:+)
puts n + (xrest / min)