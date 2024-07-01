N = gets.to_i
arr = Hash.new(0)
gets.chomp.split.map do |u|
  ar = u.to_i
  arr[ar - 1] += 1
  arr[ar] += 1
  arr[ar + 1] += 1
end
# p arr
puts arr.values.max