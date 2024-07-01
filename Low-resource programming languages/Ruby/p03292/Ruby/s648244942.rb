data = gets.chomp.split(' ').map(&:to_i)

min = 500
data.permutation(3) do |ar|
  n = (ar[1] - ar[0]).abs + (ar[2] - ar[1]).abs
  min = [min, n].min
end

puts min

